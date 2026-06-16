# ASSOCIAÇÃO ENTRE QUALIDADE DO AR, INTERNAÇÕES POR DOENÇAS RESPIRATÓRIAS E CUSTOS HOSPITALARES EM MUNICÍPIOS PAULISTAS (2017 - 2025)

## Autor

Elton Lisboa Tavares Alves

Programa de Pós-Graduação em Ciência e Tecnologia Ambiental (CTA)

Universidade Federal do ABC (UFABC)

Resumo

Este repositório reúne os scripts, bases de dados processadas e produtos analíticos desenvolvidos na dissertação de mestrado intitulada:

"Associação entre Qualidade do Ar, Internações por Doenças Respiratórias e Custos Hospitalares em Municípios Paulistas (2017–2025)"

O estudo investiga a associação entre poluentes atmosféricos (MP₂.₅, NO₂ e O₃), variáveis meteorológicas e indicadores hospitalares respiratórios, utilizando Modelos Aditivos Generalizados (GAM), análise exploratória e dados provenientes do QUALAR/CETESB e do SIH/SUS-DATASUS.

## Bases de dados

 - QUALAR / CETESB
 - SIH/SUS – DATASUS
 - IBGE – Censo Demográfico 2022

## Ferramentas utilizadas

 - R
 - QGIS
 - GitHub

Estrutura do Repositório

01_Imputacao_MissForest

Tratamento de dados faltantes por meio do algoritmo missForest.

02_Deflacionamento_Custos

Correção monetária dos custos hospitalares utilizando índices oficiais de inflação.

03_Correlacao_Parcial

Análise exploratória das correlações parciais entre variáveis ambientais, meteorológicas e indicadores hospitalares.

04_Modelo_25

Modelagem estatística final baseada em Modelos Aditivos Generalizados (GAM), incluindo seleção de modelos, diagnósticos, métricas globais, tamanhos de efeito, gráficos e tabelas síntese.

Fluxo Analítico
Imputação dos dados faltantes (missForest)
Deflacionamento dos custos hospitalares
Correlação parcial ajustada
Modelagem estatística final (Modelo 25)

Orientador

Prof. Dr. Vitor Vieira Vasconcelos

Universidade Federal do ABC (UFABC)
