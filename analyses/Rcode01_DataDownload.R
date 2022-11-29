crea_dir(lb = list('pantheria', 'wildfinder')) # CREER LES DOSSIERS
download_data(url = 'https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/pantheria/' , file = list('PanTHERIA_1-0_WR05_Aug2008.txt'), destfolder = 'pantheria')
download_data(url = 'https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/' , file = list('wildfinder-ecoregions_list.csv', 'wildfinder-ecoregions_species.csv', 'wildfinder-mammals_list.csv'), destfolder = 'wildfinder')
