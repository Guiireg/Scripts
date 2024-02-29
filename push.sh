#!/bin/bash

git_add_comit_push() {
    git add .
    git status
    read -p "Voulez-vous continuer ? (o/n) " choice
    case "$choice" in
        o|0 )
        read -p "Entrez votre message de commit : " commit_message
        git commit -m "$commit_message"
        git push origin master
        ;;
        * )
        echo "Opération annulée."
        ;;
    esac
}   

git_add_comit_push