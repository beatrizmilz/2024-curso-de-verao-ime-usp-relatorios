gerar_arquivo_presenca <- function(aula = 1) {
  
  diretorio <- paste0("presenca/aula-", aula, "/")
  
  lista_presenca <-
    fs::dir_ls(diretorio, regexp = ".txt") |>
    purrr::map(readr::read_lines, skip = 1) |>
    purrr::list_c() |>
    unique() |>
    sort() |> 
    tibble::as_tibble() |> 
    dplyr::rename(nome = value) |> 
    dplyr::mutate(presenca = TRUE,
                  aula = aula) 
  
  readr::write_csv(lista_presenca, paste0("presenca/lista-presenca-aula-", aula, ".csv"))
  return(lista_presenca)
}


