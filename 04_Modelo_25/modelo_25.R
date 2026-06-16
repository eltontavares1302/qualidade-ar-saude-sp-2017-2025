

# ============================================================================
# DIRETÓRIO DE TRABALHO - MODELO 25
# ============================================================================
dir.create(
  "C:/Users/SN1079997/Downloads/Modelo_25",
  recursive = TRUE,
  showWarnings = FALSE
)
setwd("C:/Users/SN1079997/Downloads/Modelo_25")
cat("\nDiretorio de trabalho:", getwd(), "\n")


R version 4.6.0 (2026-04-24 ucrt) -- "Because it was There"
Copyright (C) 2026 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64

R é um software livre e vem sem GARANTIA ALGUMA.
Você pode redistribuí-lo sob certas circunstâncias.
Digite 'license()' ou 'licence()' para detalhes de distribuição.

R é um projeto colaborativo com muitos contribuidores.
Digite 'contributors()' para obter mais informações e
'citation()' para saber como citar o R ou pacotes do R em publicações.

Digite 'demo()' para demonstrações, 'help()' para o sistema on-line de ajuda,
ou 'help.start()' para abrir o sistema de ajuda em HTML no seu navegador.
Digite 'q()' para sair do R.

[Workspace loaded from ~/.RData]

> getwd()
[1] "C:/Users/SN1079997/Documents"
> dir.create("C:/Users/SN1079997/Downloads/Modelo_19",
+            recursive = TRUE,
+            showWarnings = FALSE)
> 
> setwd("C:/Users/SN1079997/Downloads/Modelo_19")
> 
> getwd()
[1] "C:/Users/SN1079997/Downloads/Modelo_19"
> list.files()
[1] "modelo_19.R"                                          "painel_QUALAR_SUS_imputed_2017_2025_DEFLACIONADO.csv"
> cat("INICIO:", Sys.time(), "\n")
INICIO: 1781041556 
> inicio <- Sys.time()
> 
> source("modelo_19.R")

Anexando pacote: ‘dplyr’

Os seguintes objetos são mascarados por ‘package:stats’:

    filter, lag

Os seguintes objetos são mascarados por ‘package:base’:

    intersect, setdiff, setequal, union

This is scam 1.2-22.
Carregando pacotes exigidos: nlme

Anexando pacote: ‘nlme’

O seguinte objeto é mascarado por ‘package:dplyr’:

    collapse

This is mgcv 1.9-4. For overview type '?mgcv'.

=== Testando Modelos: Internacoes_Normal (964 combinacoes) ===
>> Iniciando avaliacao Top-Down de Parcimonia...
>> VENCEDOR VALIDO ENCONTRADO NO RANK 1! (Score: 764.05)
Error in xy.coords(x, y, xlabel, ylabel, log) : 
  comprimentos de 'x' e 'y' diferem
Além disso: Houve 50 ou mais avisos (use warnings() para ver os primeiros 50)

> setwd("C:/Users/SN1079997/Downloads/Modelo_19")
> source("modelo_19_ajustado.R")
Error in file(filename, "r", encoding = encoding) : 
  não é possível abrir a conexão
Além disso: Mensagen de aviso:
In file(filename, "r", encoding = encoding) :
  não foi possível abrir o arquivo 'modelo_19_ajustado.R': No such file or directory

> dir.create(
+     "C:/Users/SN1079997/Downloads/Modelo_19_Ajustado",
+     recursive = TRUE,
+     showWarnings = FALSE
+ )
> 
> setwd("C:/Users/SN1079997/Downloads/Modelo_19_Ajustado")
> 
> getwd()
[1] "C:/Users/SN1079997/Downloads/Modelo_19_Ajustado"
> list.files()
[1] "modelo_19_ajustado.R"                                 "painel_QUALAR_SUS_imputed_2017_2025_DEFLACIONADO.csv"
> inicio <- Sys.time()
> 
> source("modelo_19_ajustado.R")

INICIO EXECUCAO MODELO 25: 2026-06-09 19:40:16.483262 
=== Testando Modelos: Internacoes_Normal (964 combinacoes) ===
>> Iniciando avaliacao Top-Down de Parcimonia...
>> VENCEDOR VALIDO ENCONTRADO NO RANK 1! (Score: 764.05)

   SUMMARY DO MELHOR MODELO VALIDO: Internacoes_Normal (Rank 1)

Family: quasipoisson 
Link function: log 

Formula:
internacoes ~ municipio + s(t, bs = "cr", k = 8) + s(mes, bs = "cc", 
    k = 6) + offset(log(populacao)) + s(MP25, bs = "mpi", k = 5) + 
    s(O3, bs = "mpi", k = 5) + s(TEMP, bs = "cr", k = 5) + s(VV, 
    bs = "cr", k = 5) + MP25:VV + O3:VV
<environment: 0x000001d0899286f8>

Parametric coefficients:
                                 Estimate Std. Error t value Pr(>|t|)    
(Intercept)                    -7.2508890  0.1018831 -71.169  < 2e-16 ***
municipioGuarulhos             -0.2977215  0.0232178 -12.823  < 2e-16 ***
municipioPiracicaba            -0.3705908  0.0304559 -12.168  < 2e-16 ***
municipioRibeirao Preto        -0.0829772  0.0254735  -3.257 0.001179 ** 
municipioSantos                -0.3429179  0.0403890  -8.490  < 2e-16 ***
municipioSao Bernardo do Campo -0.5201059  0.0276877 -18.785  < 2e-16 ***
municipioSao Jose dos Campos   -0.2029304  0.0261781  -7.752 3.18e-14 ***
municipioSao Paulo             -0.1890295  0.0182719 -10.345  < 2e-16 ***
municipioTaubate               -0.4447007  0.0364643 -12.196  < 2e-16 ***
MP25:VV                        -0.0094647  0.0024811  -3.815 0.000148 ***
VV:O3                          -0.0026993  0.0009968  -2.708 0.006938 ** 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Approximate significance of smooth terms:
          edf Ref.df      F  p-value    
s(t)    5.665  6.429 14.424 2.91e-16 ***
s(mes)  3.912  4.000 86.017  < 2e-16 ***
s(MP25) 1.000  1.000 12.945 0.000343 ***
s(O3)   1.000  1.000 10.204 0.001462 ** 
s(TEMP) 3.622  3.918  5.943 0.000128 ***
s(VV)   1.000  1.000 18.908 1.57e-05 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

R-sq.(adj) =  0.9928   Deviance explained = 99.5%
GCV score = 8.4688  Scale est. = 8.1528    n = 729


=== Testando Modelos: Internacoes_Pandemia (964 combinacoes) ===
>> Iniciando avaliacao Top-Down de Parcimonia...
   - Modelo Rank 1 descartado. Variavel achatada (EDF ~ 0): MP25
>> VENCEDOR VALIDO ENCONTRADO NO RANK 2! (Score: 278.15)

   SUMMARY DO MELHOR MODELO VALIDO: Internacoes_Pandemia (Rank 2)

Family: quasipoisson 
Link function: log 

Formula:
internacoes ~ municipio + s(t, bs = "cr", k = 4) + s(mes, bs = "cc", 
    k = 6) + offset(log(populacao)) + s(NO2, bs = "mpi", k = 5) + 
    s(O3, bs = "mpi", k = 5) + s(TEMP, bs = "cr", k = 5) + s(UR, 
    bs = "cr", k = 5) + s(VV, bs = "cr", k = 5) + NO2:O3 + TEMP:VV
<environment: 0x000001d08a7d9370>

Parametric coefficients:
                                 Estimate Std. Error t value Pr(>|t|)    
(Intercept)                    -6.0557941  0.6410284  -9.447  < 2e-16 ***
municipioGuarulhos             -0.2329980  0.0879900  -2.648  0.00870 ** 
municipioPiracicaba            -0.3118187  0.0814600  -3.828  0.00017 ***
municipioRibeirao Preto        -0.3851502  0.0741081  -5.197 4.72e-07 ***
municipioSantos                -0.8387233  0.1832984  -4.576 8.04e-06 ***
municipioSao Bernardo do Campo -0.2037456  0.1001257  -2.035  0.04310 *  
municipioSao Jose dos Campos   -0.3756499  0.0777439  -4.832 2.58e-06 ***
municipioSao Paulo             -0.0529423  0.1100149  -0.481  0.63085    
municipioTaubate               -0.2651739  0.0966092  -2.745  0.00657 ** 
NO2:O3                         -0.0003392  0.0001390  -2.441  0.01548 *  
TEMP:VV                        -0.0421706  0.0167499  -2.518  0.01255 *  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Approximate significance of smooth terms:
          edf Ref.df      F  p-value    
s(t)    2.755  2.943 44.115  < 2e-16 ***
s(mes)  3.348  4.000  6.251 4.72e-05 ***
s(NO2)  3.000  3.000  1.741  0.15965    
s(O3)   1.000  1.000  0.030  0.86288    
s(TEMP) 2.313  2.882  4.332  0.00635 ** 
s(UR)   2.363  2.942  8.447 3.05e-05 ***
s(VV)   3.445  3.813  3.615  0.00834 ** 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

R-sq.(adj) =  0.9912   Deviance explained =   99%
GCV score = 14.361  Scale est. = 12.634    n = 243


=== Testando Modelos: Obitos_Normal (964 combinacoes) ===
>> Iniciando avaliacao Top-Down de Parcimonia...
   - Modelo Rank 1 descartado. Variavel achatada (EDF ~ 0): NO2
>> VENCEDOR VALIDO ENCONTRADO NO RANK 2! (Score: 764.52)

   SUMMARY DO MELHOR MODELO VALIDO: Obitos_Normal (Rank 2)

Family: quasipoisson 
Link function: log 

Formula:
obitos ~ municipio + s(t, bs = "cr", k = 8) + s(mes, bs = "cc", 
    k = 6) + offset(log(populacao)) + s(NO2, bs = "mpi", k = 5) + 
    s(O3, bs = "mpi", k = 5) + s(TEMP, bs = "cr", k = 5) + s(UR, 
    bs = "cr", k = 5) + NO2:O3 + O3:TEMP
<environment: 0x000001d08a761bb0>

Parametric coefficients:
                                 Estimate Std. Error t value Pr(>|t|)    
(Intercept)                    -8.927e+00  3.938e-01 -22.670  < 2e-16 ***
municipioGuarulhos              6.744e-02  4.503e-02   1.498  0.13465    
municipioPiracicaba            -5.460e-02  4.569e-02  -1.195  0.23247    
municipioRibeirao Preto         3.731e-01  3.648e-02  10.227  < 2e-16 ***
municipioSantos                -7.611e-02  6.958e-02  -1.094  0.27438    
municipioSao Bernardo do Campo -6.297e-01  6.220e-02 -10.123  < 2e-16 ***
municipioSao Jose dos Campos    2.506e-01  3.803e-02   6.590 8.66e-11 ***
municipioSao Paulo             -1.006e-01  5.915e-02  -1.700  0.08954 .  
municipioTaubate               -2.154e-01  5.478e-02  -3.932 9.25e-05 ***
NO2:O3                         -1.037e-04  6.199e-05  -1.673  0.09479 .  
O3:TEMP                        -1.296e-03  3.915e-04  -3.310  0.00098 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Approximate significance of smooth terms:
          edf Ref.df      F  p-value    
s(t)    5.679  6.440 18.029  < 2e-16 ***
s(mes)  3.769  4.000  5.352 0.000284 ***
s(NO2)  1.721  1.926  2.004 0.136032    
s(O3)   3.000  3.000  4.940 0.002111 ** 
s(TEMP) 1.000  1.000  9.927 0.001696 ** 
s(UR)   3.738  3.959  2.089 0.081357 .  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

R-sq.(adj) =  0.9896   Deviance explained = 98.6%
GCV score = 1.7906  Scale est. = 1.7171    n = 729


=== Testando Modelos: Obitos_Pandemia (964 combinacoes) ===
>> Iniciando avaliacao Top-Down de Parcimonia...
   - Modelo Rank 1 descartado. Variavel achatada (EDF ~ 0): NO2, O3
   - Modelo Rank 2 descartado. Variavel achatada (EDF ~ 0): NO2
   - Modelo Rank 3 descartado. Variavel achatada (EDF ~ 0): NO2
   - Modelo Rank 4 descartado. Variavel achatada (EDF ~ 0): NO2, O3
   - Modelo Rank 5 descartado. Variavel achatada (EDF ~ 0): MP25
   - Modelo Rank 6 descartado. Variavel achatada (EDF ~ 0): MP25, O3
   - Modelo Rank 7 descartado. Variavel achatada (EDF ~ 0): O3
>> VENCEDOR VALIDO ENCONTRADO NO RANK 8! (Score: 278.04)

   SUMMARY DO MELHOR MODELO VALIDO: Obitos_Pandemia (Rank 8)

Family: quasipoisson 
Link function: log 

Formula:
obitos ~ municipio + s(t, bs = "cr", k = 4) + s(mes, bs = "cc", 
    k = 6) + offset(log(populacao)) + s(NO2, bs = "mpi", k = 5) + 
    s(TEMP, bs = "cr", k = 5) + s(UR, bs = "cr", k = 5) + s(VV, 
    bs = "cr", k = 5) + NO2:VV + TEMP:VV
<environment: 0x000001d08f32bd08>

Parametric coefficients:
                                Estimate Std. Error t value Pr(>|t|)    
(Intercept)                    -7.400970   1.244720  -5.946 1.09e-08 ***
municipioGuarulhos              0.464507   0.105767   4.392 1.76e-05 ***
municipioPiracicaba            -0.153990   0.110230  -1.397   0.1638    
municipioRibeirao Preto        -0.252151   0.107097  -2.354   0.0194 *  
municipioSantos                -0.242273   0.230436  -1.051   0.2943    
municipioSao Bernardo do Campo -0.162157   0.131467  -1.233   0.2187    
municipioSao Jose dos Campos    0.382227   0.096450   3.963   0.0001 ***
municipioSao Paulo              0.339727   0.142881   2.378   0.0183 *  
municipioTaubate                0.164899   0.125475   1.314   0.1902    
NO2:VV                         -0.013809   0.007986  -1.729   0.0852 .  
VV:TEMP                        -0.067325   0.028977  -2.323   0.0211 *  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Approximate significance of smooth terms:
          edf Ref.df      F  p-value    
s(t)    2.834  2.972 14.601 1.17e-08 ***
s(mes)  3.692  4.000  5.445 0.000284 ***
s(NO2)  1.000  1.000  0.491 0.484148    
s(TEMP) 3.361  3.788  2.751 0.032109 *  
s(UR)   1.088  1.171  8.502 0.002781 ** 
s(VV)   2.993  3.495  3.429 0.013687 *  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

R-sq.(adj) =  0.9811   Deviance explained = 97.9%
GCV score = 3.0563  Scale est. = 2.7297    n = 243


=== Testando Modelos: Letalidade_Normal (964 combinacoes) ===
>> Iniciando avaliacao Top-Down de Parcimonia...
>> VENCEDOR VALIDO ENCONTRADO NO RANK 1! (Score: 25.55)

   SUMMARY DO MELHOR MODELO VALIDO: Letalidade_Normal (Rank 1)

Family: quasibinomial 
Link function: logit 

Formula:
cbind(obitos, internacoes - obitos) ~ municipio + s(t, bs = "cr", 
    k = 8) + s(mes, bs = "cc", k = 6) + s(MP25, bs = "mpi", k = 5) + 
    s(NO2, bs = "mpi", k = 5)
<environment: 0x000001d094582130>

Parametric coefficients:
                               Estimate Std. Error t value Pr(>|t|)    
(Intercept)                    -2.44365    0.03865 -63.227  < 2e-16 ***
municipioGuarulhos              0.32345    0.05342   6.055 2.27e-09 ***
municipioPiracicaba             0.38229    0.04600   8.311 4.84e-16 ***
municipioRibeirao Preto         0.55659    0.04649  11.972  < 2e-16 ***
municipioSantos                 0.46976    0.05702   8.238 8.43e-16 ***
municipioSao Bernardo do Campo -0.26181    0.06086  -4.302 1.93e-05 ***
municipioSao Jose dos Campos    0.50356    0.04624  10.889  < 2e-16 ***
municipioSao Paulo             -0.07331    0.07350  -0.997    0.319    
municipioTaubate                0.28399    0.04679   6.070 2.09e-09 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Approximate significance of smooth terms:
          edf Ref.df      F  p-value    
s(t)    4.331  5.175  3.104 0.008193 ** 
s(mes)  3.829  4.000 21.766  < 2e-16 ***
s(MP25) 1.001  1.002  0.499 0.480405    
s(NO2)  2.065  2.374  7.285 0.000399 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

R-sq.(adj) =  0.4668   Deviance explained = 47.6%
GCV score = 0.0070411  Scale est. = 0.0068458  n = 729


=== Testando Modelos: Letalidade_Pandemia (964 combinacoes) ===
>> Iniciando avaliacao Top-Down de Parcimonia...
   - Modelo Rank 1 descartado. Variavel achatada (EDF ~ 0): NO2, O3
>> VENCEDOR VALIDO ENCONTRADO NO RANK 2! (Score: 22.85)

   SUMMARY DO MELHOR MODELO VALIDO: Letalidade_Pandemia (Rank 2)

Family: quasibinomial 
Link function: logit 

Formula:
cbind(obitos, internacoes - obitos) ~ municipio + s(t, bs = "cr", 
    k = 4) + s(mes, bs = "cc", k = 6) + s(O3, bs = "mpi", k = 5)
<environment: 0x000001d08e612030>

Parametric coefficients:
                               Estimate Std. Error t value Pr(>|t|)    
(Intercept)                    -2.22530    0.06964 -31.952  < 2e-16 ***
municipioGuarulhos              0.62675    0.08926   7.022 2.51e-11 ***
municipioPiracicaba             0.09000    0.09701   0.928 0.354517    
municipioRibeirao Preto         0.29017    0.09543   3.041 0.002636 ** 
municipioSantos                 0.56770    0.09001   6.307 1.46e-09 ***
municipioSao Bernardo do Campo -0.08954    0.10059  -0.890 0.374314    
municipioSao Jose dos Campos    0.73979    0.08797   8.410 4.53e-15 ***
municipioSao Paulo              0.10764    0.09668   1.113 0.266709    
municipioTaubate                0.35706    0.09265   3.854 0.000151 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Approximate significance of smooth terms:
         edf Ref.df      F  p-value    
s(t)   1.870  2.264 24.112 6.53e-11 ***
s(mes) 3.565  4.000  2.844   0.0221 *  
s(O3)  1.000  1.000  3.252   0.0726 .  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

R-sq.(adj) =  0.5804   Deviance explained = 52.9%
GCV score = 0.012388  Scale est. = 0.011601  n = 243


=== Testando Modelos: Custo_Total_PerCapita_Normal (964 combinacoes) ===
>> Iniciando avaliacao Top-Down de Parcimonia...
>> VENCEDOR VALIDO ENCONTRADO NO RANK 1! (Score: 19313.28)

   SUMMARY DO MELHOR MODELO VALIDO: Custo_Total_PerCapita_Normal (Rank 1)

Family: Gamma 
Link function: log 

Formula:
custo_total ~ municipio + s(t, bs = "cr", k = 8) + s(mes, bs = "cc", 
    k = 6) + offset(log(populacao)) + s(O3, bs = "mpi", k = 5) + 
    s(TEMP, bs = "cr", k = 5) + s(VV, bs = "cr", k = 5)
<environment: 0x000001d08873b928>

Parametric coefficients:
                               Estimate Std. Error t value Pr(>|t|)    
(Intercept)                     0.12108    0.02360   5.131 3.72e-07 ***
municipioGuarulhos             -0.69675    0.03359 -20.740  < 2e-16 ***
municipioPiracicaba            -0.33195    0.03093 -10.734  < 2e-16 ***
municipioRibeirao Preto        -0.13494    0.03266  -4.132 4.02e-05 ***
municipioSantos                -0.17857    0.04571  -3.906 0.000103 ***
municipioSao Bernardo do Campo -0.61174    0.03494 -17.510  < 2e-16 ***
municipioSao Jose dos Campos   -0.53849    0.03443 -15.642  < 2e-16 ***
municipioSao Paulo             -0.52800    0.03353 -15.745  < 2e-16 ***
municipioTaubate               -0.25030    0.03333  -7.510 1.78e-13 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Approximate significance of smooth terms:
           edf Ref.df     F  p-value    
s(t)    2.8946 3.4984 5.021  0.00114 ** 
s(mes)  3.4303 4.0000 9.778 5.68e-08 ***
s(O3)   1.0121 0.9998 1.619  0.20362    
s(TEMP) 0.9919 1.0005 6.104  0.01371 *  
s(VV)   0.9721 1.0008 2.804  0.09441 .  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

R-sq.(adj) =  0.9878   Deviance explained = 97.3%
GCV score = 0.039191  Scale est. = 0.038207  n = 729


=== Testando Modelos: Custo_Total_PerCapita_Pandemia (964 combinacoes) ===
>> Iniciando avaliacao Top-Down de Parcimonia...
   - Modelo Rank 1 descartado. Variavel achatada (EDF ~ 0): MP25
>> VENCEDOR VALIDO ENCONTRADO NO RANK 2! (Score: 6577.42)

   SUMMARY DO MELHOR MODELO VALIDO: Custo_Total_PerCapita_Pandemia (Rank 2)

Family: Gamma 
Link function: log 

Formula:
custo_total ~ municipio + s(t, bs = "cr", k = 4) + s(mes, bs = "cc", 
    k = 6) + offset(log(populacao)) + s(O3, bs = "mpi", k = 5) + 
    s(TEMP, bs = "cr", k = 5) + s(UR, bs = "cr", k = 5) + s(VV, 
    bs = "cr", k = 5) + O3:TEMP + O3:UR
<environment: 0x000001d08ab93070>

Parametric coefficients:
                                 Estimate Std. Error t value Pr(>|t|)    
(Intercept)                     5.2413312  1.5237218   3.440 0.000694 ***
municipioGuarulhos             -0.7026851  0.1065154  -6.597 2.98e-10 ***
municipioPiracicaba            -0.3449989  0.0849323  -4.062 6.73e-05 ***
municipioRibeirao Preto        -0.2386392  0.0966974  -2.468 0.014339 *  
municipioSantos                -1.0403753  0.2239770  -4.645 5.79e-06 ***
municipioSao Bernardo do Campo -0.3276632  0.1212657  -2.702 0.007419 ** 
municipioSao Jose dos Campos   -0.5785421  0.1005053  -5.756 2.81e-08 ***
municipioSao Paulo             -0.4075824  0.1067692  -3.817 0.000174 ***
municipioTaubate                0.2706200  0.1059865   2.553 0.011333 *  
O3:TEMP                        -0.0025570  0.0009787  -2.613 0.009595 ** 
O3:UR                          -0.0009469  0.0002593  -3.651 0.000325 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Approximate significance of smooth terms:
           edf Ref.df      F p-value   
s(t)    2.2497 2.5863  2.714 0.05433 . 
s(mes)  1.2977 4.0000  1.332 0.04404 * 
s(O3)   1.4247 0.9997 10.608 0.00130 **
s(TEMP) 0.8554 0.9781  7.201 0.00851 **
s(UR)   0.6117 0.9845  8.680 0.00381 **
s(VV)   0.9838 0.9950  2.928 0.08923 . 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

R-sq.(adj) =  0.9741   Deviance explained = 94.6%
GCV score = 0.090693  Scale est. = 0.083732  n = 243


=== Testando Modelos: Custo_Por_Internacao_Normal (964 combinacoes) ===
>> Iniciando avaliacao Top-Down de Parcimonia...
>> VENCEDOR VALIDO ENCONTRADO NO RANK 1! (Score: 19272.00)

   SUMMARY DO MELHOR MODELO VALIDO: Custo_Por_Internacao_Normal (Rank 1)

Family: Gamma 
Link function: log 

Formula:
custo_total ~ municipio + s(t, bs = "cr", k = 8) + s(mes, bs = "cc", 
    k = 6) + offset(log(internacoes)) + s(MP25, bs = "mpi", k = 5) + 
    s(NO2, bs = "mpi", k = 5) + s(O3, bs = "mpi", k = 5) + s(UR, 
    bs = "cr", k = 5) + s(VV, bs = "cr", k = 5) + MP25:NO2 + 
    UR:VV
<environment: 0x000001d095cf2ca8>

Parametric coefficients:
                                 Estimate Std. Error t value Pr(>|t|)    
(Intercept)                     8.6613174  0.3847104  22.514  < 2e-16 ***
municipioGuarulhos             -0.4213860  0.0411948 -10.229  < 2e-16 ***
municipioPiracicaba             0.0575102  0.0316199   1.819  0.06937 .  
municipioRibeirao Preto        -0.0361490  0.0380098  -0.951  0.34191    
municipioSantos                 0.0548626  0.0731189   0.750  0.45331    
municipioSao Bernardo do Campo -0.1438001  0.0491241  -2.927  0.00353 ** 
municipioSao Jose dos Campos   -0.3307531  0.0415274  -7.965 6.68e-15 ***
municipioSao Paulo             -0.4412414  0.0605898  -7.282 8.82e-13 ***
municipioTaubate                0.2192321  0.0423268   5.180 2.91e-07 ***
MP25:NO2                       -0.0002266  0.0001263  -1.794  0.07319 .  
UR:VV                          -0.0064289  0.0031910  -2.015  0.04432 *  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Approximate significance of smooth terms:
           edf Ref.df     F  p-value    
s(t)    2.4127 2.9707 5.036  0.00196 ** 
s(mes)  3.6491 4.0000 8.596 6.69e-07 ***
s(MP25) 0.9941 1.0005 0.642  0.42312    
s(NO2)  1.0518 0.9993 7.344  0.00691 ** 
s(O3)   1.0404 1.0017 1.406  0.23612    
s(UR)   3.6602 3.9348 3.668  0.00615 ** 
s(VV)   2.7940 3.0043 1.973  0.11652    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

R-sq.(adj) =  0.9918   Deviance explained = 97.5%
GCV score = 0.037496  Scale est. = 0.036138  n = 729


=== Testando Modelos: Custo_Por_Internacao_Pandemia (964 combinacoes) ===
>> Iniciando avaliacao Top-Down de Parcimonia...
>> VENCEDOR VALIDO ENCONTRADO NO RANK 1! (Score: 6462.49)

   SUMMARY DO MELHOR MODELO VALIDO: Custo_Por_Internacao_Pandemia (Rank 1)

Family: Gamma 
Link function: log 

Formula:
custo_total ~ municipio + s(t, bs = "cr", k = 4) + s(mes, bs = "cc", 
    k = 6) + offset(log(internacoes)) + s(MP25, bs = "mpi", k = 5) + 
    s(NO2, bs = "mpi", k = 5) + s(TEMP, bs = "cr", k = 5) + s(UR, 
    bs = "cr", k = 5) + s(VV, bs = "cr", k = 5) + NO2:VV + TEMP:VV
<environment: 0x000001d08a6236e0>

Parametric coefficients:
                                Estimate Std. Error t value Pr(>|t|)    
(Intercept)                    10.230971   0.942321  10.857  < 2e-16 ***
municipioGuarulhos             -0.462194   0.095973  -4.816 2.71e-06 ***
municipioPiracicaba             0.039778   0.070156   0.567  0.57130    
municipioRibeirao Preto         0.251502   0.083474   3.013  0.00289 ** 
municipioSantos                -0.133153   0.194272  -0.685  0.49381    
municipioSao Bernardo do Campo -0.104875   0.106511  -0.985  0.32587    
municipioSao Jose dos Campos   -0.184444   0.084421  -2.185  0.02995 *  
municipioSao Paulo             -0.242462   0.129802  -1.868  0.06309 .  
municipioTaubate                0.573551   0.084380   6.797 9.70e-11 ***
NO2:VV                         -0.020508   0.007222  -2.840  0.00493 ** 
VV:TEMP                        -0.047143   0.021045  -2.240  0.02607 *  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Approximate significance of smooth terms:
          edf Ref.df     F p-value   
s(t)    2.088 2.4307 5.627 0.00250 **
s(mes)  0.001 4.0000 0.000 0.30031   
s(MP25) 1.513 1.6665 2.797 0.07199 . 
s(NO2)  1.193 0.9976 6.743 0.01011 * 
s(TEMP) 1.699 2.3006 2.627 0.06648 . 
s(UR)   1.985 2.5737 4.360 0.00853 **
s(VV)   1.508 1.8290 3.205 0.04716 * 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

R-sq.(adj) =  0.9835   Deviance explained = 96.6%
GCV score = 0.057956  Scale est. = 0.052972  n = 243


FIM EXECUCAO MODELO 25: 2026-06-09 22:29:58.540997 
TEMPO TOTAL (horas): 2.828349 
Houve 50 ou mais avisos (use warnings() para ver os primeiros 50)
> 
> fim <- Sys.time()
> 
> print(fim - inicio)
Time difference of 2.828355 hours