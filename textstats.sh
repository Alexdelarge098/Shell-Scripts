#!/bin/bash

# Input file
FILE="text.txt"

# Count lines, words, and characters
echo "Lines: $(wc -l < $FILE)"
echo "Words: $(wc -w < $FILE)"
echo "Characters: $(wc -m < $FILE)"

# Find longest word
longest=$(tr ' ' '\n' < $FILE | sort | awk '{ if (length > max) { max = length; word = $0 } } END { print word }')
echo "Longest word: $longest"
