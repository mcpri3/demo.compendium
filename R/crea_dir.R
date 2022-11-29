
#' Création des dossiers de données
#'
#' @description 
#' Fonction pour créer les dossiers contenant les données 
#' 
#' @param lb : liste des noms des dossiers
#'
#' @return No return value.
#' 
#' @export
#' 
crea_dir = function(lb = list('test')) {
  for (i in 1:length(lb)) {
    dir.create(here::here('data', lb[i]))
  }
}