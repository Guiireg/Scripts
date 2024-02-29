create_feature_branch() {
    echo "Nom de la nouvelle branche de fonctionnalité :"
    read branch_name
    git checkout -b $branch_name
}

create_feature_branch