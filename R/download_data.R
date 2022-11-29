#' Téléchargement des données
#'
#' @description 
#' Fonction pour télécharger les données dans les dossiers crées
#' 
#' @param url : url des données
#' @param file : liste des fichiers de données à télécharger
#' @param destfolder : nom du dossier final 
#'
#' @return No return value.
#' 
#' @export
#' 
#' 

download_data = function(url = 'https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/pantheria/', file = list('test.txt'), destfolder = 'test') {
  for (i in 1:length(file)) {
    destpath = here::here('data', destfolder)
    utils::download.file(url = paste0(url, file[i]), destfile = file.path(destpath, file[i]))
  }
}
