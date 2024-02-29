create_repository() {
    echo "Nom du nouveau dépôt :"
    read repo_name
    echo "Description du dépôt :"
    read repo_description

    curl -u "Guiireg" https://api.github.com/user/repos -d "{\"name\":\"$repo_name\",\"description\":\"$repo_description\"}"

    git init
    git add .
    git commit -m "Initial commit"
    git remote add origin git@github.com:Guiireg/$repo_name.git
    git push -u origin master
}

create_repository