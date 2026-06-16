# Instale os pacotes se ainda não os tiver
install.packages("deflateBR")
install.packages("dplyr")

library(deflateBR)
library(dplyr)

# 1. Carregar a base de dados original
dados <- read.csv2("painel_QUALAR_SUS_imputed_2017_2025.csv")

# 2. Converter a coluna data_ref para o formato 'Date' do R
# Isso garante que a função entenda corretamente as datas de cada linha
dados$data_ref <- as.Date(dados$data_ref, format = "%d/%m/%Y")

# 3. Definir a data de referência no formato EXIGIDO pelo deflateBR ("MM/YYYY")
# Fixado para Dezembro de 2025
data_referencia <- "12/2025"

cat("Conectando ao Banco Central para baixar o IPCA e deflacionar...\n")

# 4. Criar a deflação e substituir a coluna original
dados <- dados %>%
  mutate(
    # A função deflate() agora receberá "12/2025" no real_date
    custo_total_deflacionado = deflate(
      nominal_values = custo_total, 
      nominal_dates = data_ref, 
      real_date = data_referencia, 
      index = "ipca"
    )
  ) %>%
  # Substituir a coluna original pela deflacionada
  mutate(custo_total = custo_total_deflacionado) %>%
  # Remover a coluna auxiliar criada
  select(-custo_total_deflacionado)

# 5. Voltar a coluna de data para texto no formato original (DD/MM/AAAA)
dados$data_ref <- format(dados$data_ref, "%d/%m/%Y")

# 6. Salvar o novo dataset deflacionado
write.csv2(dados, "painel_QUALAR_SUS_imputed_2017_2025_DEFLACIONADO.csv", row.names = FALSE)

cat("Processo concluído com sucesso! A base foi salva.\n")
