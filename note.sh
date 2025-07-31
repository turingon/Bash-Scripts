#!/bin/bash

NOTES_DIR="~"
TEMPLATES_DIR='/home/doruk/Obsidian/Notes/99 - Meta/01 - Templates'
CHOICE=0
TEMPLATES=()
NUMBER=1

echo '0: No Template'

for value in "$TEMPLATES_DIR"/*; do
  result="$NUMBER: "$(basename "$value")""
  echo $result 
  ((NUMBER++))
  TEMPLATES+=( "$value" )
done

read -p "Enter you choice:" CHOICE 


if [ $CHOICE -gt $NUMBER ]; then 
  echo 'No Template Found'
elif [ $CHOICE -gt 0 ]; then
  cat "${TEMPLATES[$CHOICE - 1]}" >> "test.txt"
else
  echo 'No Template Selected'
  touch "test.txt"
fi
