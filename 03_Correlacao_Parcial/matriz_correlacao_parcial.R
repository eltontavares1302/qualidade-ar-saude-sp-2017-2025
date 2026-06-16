# =============================================================================
# SCRIPT AUXILIAR: MATRIZ DE CORRELAÇÃO PARCIAL (Ajustada por Tempo e Espaço)
# =============================================================================
# Este script isola o efeito puro das variáveis ambientais.
# Ele roda um GAM para cada variável contra o município, a tendência de longo
# prazo e a sazonalidade. Depois, extrai os "resíduos" (o que sobrou da 
# variável após remover o tempo/espaço) e calcula a correlação entre eles.
# =============================================================================

library(mgcv)
library(dplyr)
library(tidyr)

gerar_correlacao_parcial <- function(data_sub, vars_to_check, file_suffix = "Normal") {
  
  cat(sprintf("\nIniciando extração de resíduos para o cenário: %s\n", file_suffix))
  
  # 1. Configurar os controles base (Tempo e Espaço)
  n_months <- dplyr::n_distinct(data_sub$data_ref)
  k_time <- min(8, max(4, floor(n_months / 8)))
  base_controls <- sprintf("~ municipio + s(t, bs='cr', k=%s) + s(mes, bs='cc', k=6)", k_time)
  
  # Criar dataframe vazio para guardar os resíduos
  df_residuos <- data.frame(matrix(ncol = length(vars_to_check), nrow = nrow(data_sub)))
  colnames(df_residuos) <- vars_to_check
  
  # 2. Isolar as variáveis (Extração de Resíduos)
  for (v in vars_to_check) {
    cat(sprintf(" -> Removendo efeitos espaciais e temporais de: %s\n", v))
    
    # Ex: gam(MP25 ~ municipio + s(t) + s(mes))
    form <- as.formula(paste(v, base_controls))
    fit_gam <- mgcv::gam(form, data = data_sub)
    
    # Guarda apenas a variação "pura" da variável
    df_residuos[[v]] <- residuals(fit_gam) 
  }
  
  # 3. Calcular a Matriz de Correlação de Pearson e os P-valores
  n_vars <- length(vars_to_check)
  tabela_correlacao <- data.frame(
    Variavel_1 = character(),
    Variavel_2 = character(),
    Correlacao_Parcial = numeric(),
    P_Valor = numeric(),
    Significativo = character(),
    stringsAsFactors = FALSE
  )
  
  # Loop para testar todos os pares
  for (i in 1:(n_vars - 1)) {
    for (j in (i + 1):n_vars) {
      var1 <- vars_to_check[i]
      var2 <- vars_to_check[j]
      
      # Teste de correlação de Pearson nos resíduos
      teste <- cor.test(df_residuos[[var1]], df_residuos[[var2]], method = "pearson")
      
      # Formatar significância com asteriscos para facilitar a leitura na tabela
      sig_stars <- ifelse(teste$p.value < 0.001, "***",
                          ifelse(teste$p.value < 0.01, "**",
                                 ifelse(teste$p.value < 0.05, "*", "ns")))
      
      tabela_correlacao <- rbind(tabela_correlacao, data.frame(
        Variavel_1 = var1,
        Variavel_2 = var2,
        Correlacao_Parcial = round(teste$estimate, 4),
        P_Valor = formatC(teste$p.value, format = "e", digits = 2), # Notação científica
        Significativo = sig_stars
      ))
    }
  }
  
  # 4. Ordenar da correlação mais forte para a mais fraca (em módulo)
  tabela_correlacao <- tabela_correlacao[order(-abs(tabela_correlacao$Correlacao_Parcial)), ]
  
  # 5. Exportar CSV
  nome_arquivo <- paste0("Correlacao_Parcial_Ajustada_", file_suffix, ".csv")
  write.csv2(tabela_correlacao, nome_arquivo, row.names = FALSE)
  
  cat(sprintf("\nMatriz calculada e salva como: %s\n", nome_arquivo))
  print(head(tabela_correlacao)) # Mostra os top resultados no console
  
  return(tabela_correlacao)
}

# =============================================================================
# EXECUÇÃO DA MATRIZ DE CORRELAÇÃO PARCIAL
# =============================================================================
# Certifique-se de que os dados já foram carregados (função load_panel())
# e divididos em dados_normal e dados_pandemia

vars_ambientais <- c("MP25", "NO2", "O3", "TEMP", "UR", "VV")

# Calcular para o período Normal
cor_parcial_norm <- gerar_correlacao_parcial(
  data_sub = dados_normal, 
  vars_to_check = vars_ambientais, 
  file_suffix = "Normal"
)

# Calcular para o período da Pandemia
cor_parcial_pand <- gerar_correlacao_parcial(
  data_sub = dados_pandemia, 
  vars_to_check = vars_ambientais, 
  file_suffix = "Pandemia"
)