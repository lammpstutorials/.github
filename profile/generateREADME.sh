#!/bin/bash

output_file="README.md"
> "$output_file"

files=()
while IFS= read -r line
do
  files+=("$line")
done < "files.txt"
input_files="${files[@]}"

# Loop through each file and append its content to the output file
for file in "${files[@]}"
do

  # Check if file exists before attempting to read it
  if [ -f "$file" ]
  then

    # Append file content to the output file
    cat "$file" >> "$output_file"

    # Append blank line
    echo -e "\n" >> "$output_file"

  else
    echo "WARNING: File '$file' does not exist."
  fi

done