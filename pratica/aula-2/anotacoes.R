getwd()
# "/Users/beatrizmilz/Documents/IME-Verao/relatorios-2024/aula-1.qmd"
# é um caminho absoluto!


# Para caminhos relativos, ele é relativo ao diretório de trabalho

"aula-1.qmd"

# Instalar pacotes
# Error in loadNamespace(x) : there is no package called ‘devtools’
# install.packages("devtools")


"aula-1_files/figure-html/unnamed-chunk-2-1.png"

# Lembrar de usar aspas, e tab.

# here cria um caminho absoluto a partir de caminhos relativos!
here::here("aula-1.qmd")

# download da base de pinguins
dir.create("dados/")
# fs::dir_create()

download.file("https://beatrizmilz.github.io/2022-curso-de-verao-ime-usp-relatorios/dados/pinguins.csv",
              "dados/pinguins.csv")

# selecionar -> CTRL SHIFT C -> ajuda a comentar blocos de código

# |> # pipe nativo - 4.1 


# > devtools::session_info()
# ─ Session info ─────────────────────────────────────────────────────
#  setting  value
#  version  R version 4.2.1 (2022-06-23)
#  os       macOS Monterey 12.7.1
#  system   aarch64, darwin20
#  ui       RStudio
#  language (EN)
#  collate  en_US.UTF-8
#  ctype    en_US.UTF-8
#  tz       America/Sao_Paulo
#  date     2024-01-24
#  rstudio  2023.12.0+369 Ocean Storm (desktop)
#  pandoc   NA
# 
# ─ Packages ─────────────────────────────────────────────────────────
#  package     * version    date (UTC) lib source
#  cachem        1.0.8      2023-05-01 [1] CRAN (R 4.2.0)
#  callr         3.7.3      2022-11-02 [1] CRAN (R 4.2.0)
#  cli           3.6.1      2023-03-23 [1] CRAN (R 4.2.0)
#  crayon        1.5.2      2022-09-29 [1] CRAN (R 4.2.0)
#  devtools    * 2.4.5      2022-10-11 [1] CRAN (R 4.2.0)
#  digest        0.6.33     2023-07-07 [1] CRAN (R 4.2.0)
#  ellipsis      0.3.2      2021-04-29 [1] CRAN (R 4.2.0)
#  fastmap       1.1.1      2023-02-24 [1] CRAN (R 4.2.0)
#  fs            1.6.3      2023-07-20 [1] CRAN (R 4.2.0)
#  glue          1.6.2      2022-02-24 [1] CRAN (R 4.2.0)
#  here          1.0.1      2020-12-13 [1] CRAN (R 4.2.0)
#  htmltools     0.5.7.9000 2023-11-14 [1] Github (rstudio/htmltools@7efa2d8)
#  htmlwidgets   1.6.2      2023-03-17 [1] CRAN (R 4.2.0)
#  httpuv        1.6.12     2023-10-23 [1] CRAN (R 4.2.0)
#  later         1.3.1      2023-05-02 [1] CRAN (R 4.2.0)
#  lifecycle     1.0.4      2023-11-07 [1] CRAN (R 4.2.1)
#  magrittr      2.0.3      2022-03-30 [1] CRAN (R 4.2.0)
#  memoise       2.0.1      2021-11-26 [1] CRAN (R 4.2.0)
#  mime          0.12       2021-09-28 [1] CRAN (R 4.2.0)
#  miniUI        0.1.1.1    2018-05-18 [1] CRAN (R 4.2.0)
#  pkgbuild      1.4.2      2023-06-26 [1] CRAN (R 4.2.0)
#  pkgload       1.3.3      2023-09-22 [1] CRAN (R 4.2.0)
#  prettyunits   1.2.0      2023-09-24 [1] CRAN (R 4.2.0)
#  processx      3.8.2      2023-06-30 [1] CRAN (R 4.2.0)
#  profvis       0.3.8      2023-05-02 [1] CRAN (R 4.2.0)
#  promises      1.2.1      2023-08-10 [1] CRAN (R 4.2.0)
#  ps            1.7.5      2023-04-18 [1] CRAN (R 4.2.0)
#  purrr         1.0.2      2023-08-10 [1] CRAN (R 4.2.0)
#  R6            2.5.1      2021-08-19 [1] CRAN (R 4.2.0)
#  Rcpp          1.0.11     2023-07-06 [1] CRAN (R 4.2.0)
#  remotes       2.4.2.1    2023-07-18 [1] CRAN (R 4.2.0)
#  rlang         1.1.2      2023-11-04 [1] CRAN (R 4.2.1)
#  rprojroot     2.0.4      2023-11-05 [1] CRAN (R 4.2.1)
#  rstudioapi    0.15.0     2023-07-07 [1] CRAN (R 4.2.0)
#  sessioninfo   1.2.2      2021-12-06 [1] CRAN (R 4.2.0)
#  shiny         1.7.5.1    2023-10-14 [1] CRAN (R 4.2.0)
#  stringi       1.8.2      2023-11-23 [1] CRAN (R 4.2.3)
#  stringr       1.5.1      2023-11-14 [1] CRAN (R 4.2.3)
#  urlchecker    1.0.1      2021-11-30 [1] CRAN (R 4.2.0)
#  usethis     * 2.2.2      2023-07-06 [1] CRAN (R 4.2.0)
#  vctrs         0.6.4      2023-10-12 [1] CRAN (R 4.2.0)
#  xtable        1.8-4      2019-04-21 [1] CRAN (R 4.2.0)
# 
#  [1] /Library/Frameworks/R.framework/Versions/4.2-arm64/Resources/library
# 
# ────────────────────────────────────────────────────────────────────



# Importando base dos pinguins


pinguins <- readr::read_csv("dados/pinguins.csv")

# dica do import - Bruno!

library(readr)
pinguins_botao <- read_csv("dados/pinguins.csv")

# readr::read_csv()

# Padronizar os nomes
iris
# Sepal.Length Sepal.Width Petal.Length Petal.Width    Species


janitor::clean_names(iris)
# sepal_length sepal_width petal_length petal_width    species
# ?janitor::clean_names

janitor::clean_names(iris, case = "upper_camel")
janitor::clean_names(iris, case = "lower_camel")

?janitor::row_to_names()


# funcao util: row to names
data.frame(X_1 = c(NA, "Title", 1:3),
                X_2 = c(NA, "Title2", 4:6)) |> 
  janitor::row_to_names(row_number = 2)
