#!/bin/bash
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

cd /markdown-data
for i in *.md; do
    [ -f "$i" ] || break
    FILENAME=$(basename "$i" .md)
    /converter-utils/pandoc --template=GitHub.html5 --embed-resources --standalone \
    -f markdown -t html5 -o ${FILENAME}.html $i
done

# Move the converted files to the output directory
mv *.html /markdown-data/output/
IFS=$SAVEIFS