clean_project() {
    find . -type f \( -name "*~" -o -name "\#*\#" -o -name "*.swp" \) -delete
    rm -rf obj
    echo "Projet nettoyé avec succès."
}

clean_project