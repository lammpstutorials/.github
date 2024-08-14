#!/bin/bash

files=()
while IFS= read -r line; do
  files+=("$line")
done < "files.txt"
input_files="${files[@]}"

pandoc -s $input_files -o README.md