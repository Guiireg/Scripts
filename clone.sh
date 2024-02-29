clone_git_repo() {
    read -p "Entrez l'url du dépôt git à cloner : " repo_url

    if [ -z "$repo_url" ]; then
        echo "Aucun URL de dépôt n'a été fourni."
        return 1
    fi

    if [[ ! "$repo_url" =~ ^(https?|git):// ]]; then
        echo "L'URL de dépôt n'est pas valide."
        return 1
    fi

    read -p "Entrez le nom du répertoire de destination (laissez vide pour utiliser le nom par défaut) : " destination_folder

    if [ -z "$destination_folder" ]; then
        git clone "$repo_url"
    else
        git clone "$repo_url" "$destination_folder"
    fi
    
    echo "Clonage terminé."
}

clone_git_repo