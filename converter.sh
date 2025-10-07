#!/bin/bash
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

cd /markdown-data
useradd user
#cat /etc/passwd
dirbase=$(pwd)

DIRS=""
find . -type d | while read -r dir; do    
    echo "Found directory: $dir"
    cd $dir

    for i in *.md; do
        [ -f "$i" ] || break
        FILENAME=$(basename "$i" .md)
        /converter-utils/pandoc --template=GitHub.html5 --embed-resources --standalone \
        -f markdown -t html5 --variable=toc-title=Contenido --toc=true -o "${FILENAME}.html" "$i"
    done
    
    cd $dirbase
done

chown -R 1000:1000 .

# Move the converted files to the output directory
#mv *.html /markdown-data/output/
IFS=$SAVEIFS