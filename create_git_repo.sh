create_git_repo() {
    read -p "Entrez le nom du nouveau dépôt Git: " repo_name

    if [ -z "$repo_name" ]; then
        echo "Aucun nom de dépôt n'a été fourni."
        return 1
    fi

    read -p "Voulez-vous créer un nouveau répertoire pour le dépôt ? (o/n) " create_new_dir

    if [ "$create_new_dir" = "o" ]; then
        mkdir "$repo_name"
        cd "$repo_name" || return 1
    fi

    git init

    echo "# $repo_name" >> README.md

    git add README.md
    git commit -m "Initial commit"

    echo "Nouveau dépôt Git '$repo_name' créé et initialisé."
}

create_git_repo