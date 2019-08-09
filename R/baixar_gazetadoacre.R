#' Baixar Gazeta do Acre
#'
#' @param aba nome da aba, e.x, "policia"
#' @param periodo colocar "agora" para notícias que estão no ar agora,
#'     ignorar se quiser informar o número de páginas.
#' @param paginas Se período ignorado, informar o número de páginas
#'      a serem baixadas
#' @param diretorio Diretório onde salvar os htmls
#'
#' @return htmls baixados
#' @export
#'
#' @examples
#' \dontrun{
#' baixar_gazetadoacre(aba = "policia", periodo = "agora")
#' }
baixar_gazetadoacre <- function(aba = "policia", periodo = "",paginas= 10,diretorio = "."){

  if (periodo == "agora"){

  url <- "https://agazetadoacre.com/categoria/noticias/policia/"

httr::GET(url,httr::write_disk(file.path(diretorio, Sys.time() %>%
stringr::str_replace_all("\\D+", "_") %>%
stringr::str_replace("$", ".html") %>%
  stringr::str_replace("^","gazetadoacre_"))))
  } else {

  purrr::walk(1:paginas,~{

  url<-  paste0("https://agazetadoacre.com/categoria/noticias/policia/page/",.x,"/")

  arquivo <- paste0("_",aba,"_pagina_", .x, ".html")

  httr::GET(url,
            httr::write_disk(file.path(diretorio,
                                       Sys.time() %>%
                                             stringr::str_replace_all("\\D+", "_") %>%
                                             stringr::str_replace("$", arquivo) %>%
                                             stringr::str_replace("^","gazetadoacre_"))))

  })

  }

}

