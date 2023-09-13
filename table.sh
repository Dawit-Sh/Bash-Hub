#!/bin/bash

# Get the number of rows
read -p "Enter the number of rows: " num_rows

# Create an empty array to store the data
data=()

# Get the data from the user
for (( i=0; i<num_rows; i++ )); do
  read -p "Enter row ${i+1}: " row
  data+=($row)
done

# Create the Markdown table
markdown_table=""
for row in "${data[@]}"; do
  markdown_table+="| ${row[0]} | ${row[1]} | ${row[2]} |"
done

# Print the Markdown table
echo "$markdown_table"
