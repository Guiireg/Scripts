init_project() {
    read -p "Entrez le nom du nouveau projet: " project_name

    if [ -z "$project_name" ]; then
        echo "Aucun nom de projet n'a été fourni."
        return 1
    fi

    read -p "Voulez-vous créer un nouveau répertoire pour le projet ? (o/n) " create_new_dir

    if [ "$create_new_dir" = "o" ]; then
        mkdir "$project_name"
        cd "$project_name" || return 1
    fi

    mkdir -p lib src obj
    cp ~/Documents/Scripts/Makefile ./Makefile
    echo "Projet C '$project_name' créé et initialisé avec succès."
}

init_project