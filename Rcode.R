install.packages('rcompendium') # package qui aide a la mise en forme du projet 
install.packages('here') # package qui aide a la mise en forme du projet 
install.packages('usethis') # package qui aide a la mise en forme du projet 

# A NE LANCER QU'UNE FOIS, PERMET D'ENREGISTRER L'ID DU GENERATEUR DU PACKAGE
rcompendium::set_credentials(given    = "Marie-Caroline",
                             family   = "Prima", 
                             email    = "marie-caroline.prima@mnhn.fr", 
                             orcid    = "", 
                             protocol = "ssh")
gh::gh_whoami()


rcompendium::add_description() # CREER UN FICHIER DE DESCRIPTION (CONTIENT LES PACKAGES)
rcompendium::add_license(license = "GPL-2") # CREER UN FICHIER DE LICENCE, CHOIX DE LA LICENCE : https://choosealicense.com/
rcompendium::add_compendium() # CREER LES SOUS-DOSSIERS DU PROJET 
unlink(here::here("data", "raw-data"), recursive = TRUE)
unlink(here::here("data", "derived-data"), recursive = TRUE)

usethis::use_r('download_data') # CREER UN DOSSIER R ET LE FICHIER download-data.R DANS CE DOSSIER 
usethis::use_r('crea_dir')

devtools::document()#creer le document de chaque fonction, attention l'entête des fonctions doit avoir une forme spécial 

rcompendium::add_dependencies(compendium = ".") #identifie les packages necessaires

remotes::install_deps() #installe les dependencies listées dans DESCRIPTION
devtools::load_all() # charge les fonctions

rcompendium::add_makefile() #ajoute le make file
rcompendium::add_readme_rmd(type = "compendium") #ajout du readme en markdown (à compiler) 

