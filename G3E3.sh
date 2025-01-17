#!/bin/bash

words=()

while true; do
    read -p "Introduce una palabra (escribe 'fin' para terminar): " word
    if [ "$word" == "fin" ]; then
        break
    fi
    words+=("$word")
done

word_count=0
for word in "${words[@]}"; do
    word_count=$((word_count + 1))
done

sorted_words=($(for word in "${words[@]}"; do echo "$word"; done | sort))

echo "Has introducido $word_count palabras."
echo "Palabras ordenadas alfabéticamente:"
for word in "${sorted_words[@]}"; do
    echo "$word"
done