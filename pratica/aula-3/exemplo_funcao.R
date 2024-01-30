# nome <- function(argumento){
#   o que será feito, usando argumento
#   
#   
#   a ultima linha é o que é retornado
# }

# Esse código funciona para um caso
unique(pinguins$especie) |> 
  knitr::combine_words(and = " e ",
                       oxford_comma = FALSE)


# criando a função a partir do código que já funciona
combinar_palavras2 <- function(x) {
  x |>
    unique() |>
    knitr::combine_words(and = " e ",
                         oxford_comma = FALSE)
} 

# experimentando a função
combinar_palavras2(pinguins$especie)
