# 1. Install required packages if you don't have them yet

library(tidyverse)
library(missForest)

# 2. Read the dataset
# read_csv2 automatically handles ';' as separators and ',' as decimal marks
df <- read_csv2("painel_QUALAR_SUS_9_mun_com_clima_2017_2025.csv")

# 3. Pivot from Long to Wide
# We keep time-related variables as rows (ano, mes, data_ref, pandemic, mes_nome).
# We spread the other variables so each municipality has its own columns.
# We use a custom separator "___" to safely split them back later.
df_wide <- df %>%
  pivot_wider(
    id_cols = c(ano, mes, data_ref, pandemic, mes_nome), 
    names_from = municipio,
    values_from = c(cod_mun6, MP25, NO2, O3, n_estacoes, internacoes, 
                    obitos, custo_total, TEMP, UR, VV, 
                    n_estacoes_clima, populacao),
    names_glue = "{.value}___{municipio}"
  )

# 4. Prepare data for missForest
# missForest cannot handle dates or character columns natively as identifiers,
# so we separate the non-predictive ID columns from the data to be imputed.
id_cols <- df_wide %>% select(ano, mes, data_ref, pandemic, mes_nome)
data_to_impute <- df_wide %>% select(-ano, -mes, -data_ref, -pandemic, -mes_nome)

# Ensure everything left is either numeric or factor (missForest requirement)
data_to_impute <- data_to_impute %>%
  mutate(across(where(is.character), as.factor))

# 5. Run Random Forest Imputation
# Note: ntree=100 is usually a good baseline. Increase if needed, but it will take longer.
set.seed(42) # For reproducibility
cat("Running missForest. This may take a few minutes depending on your CPU...\n")
imputation_result <- missForest(as.data.frame(data_to_impute), ntree = 100)

# Extract the imputed dataframe
data_imputed_wide <- imputation_result$ximp

# 6. Recombine the IDs with the imputed wide data
df_wide_final <- bind_cols(id_cols, data_imputed_wide)

# 7. Pivot back from Wide to Long
df_long_imputed <- df_wide_final %>%
  pivot_longer(
    cols = -c(ano, mes, data_ref, pandemic, mes_nome),
    names_to = c(".value", "municipio"),
    names_sep = "___"
  ) %>%
  # Reorder columns to match the original dataset closely
  relocate(cod_mun6, ano, mes, data_ref, pandemic, MP25, NO2, O3, n_estacoes, 
           internacoes, obitos, custo_total, municipio, mes_nome, 
           TEMP, UR, VV, n_estacoes_clima, populacao)

# 8. Save the final imputed dataset
write_csv2(df_long_imputed, "painel_QUALAR_SUS_imputed_2017_2025.csv")

cat("Imputation complete! Data saved to 'painel_QUALAR_SUS_imputed_2017_2025.csv'\n")
