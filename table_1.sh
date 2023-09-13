#!/bin/bash

# Get the number of rows
read -p "Enter the number of rows: " num_rows

# Create an empty array to store the data
data=()

# Get the data from the user
for (( i=0; i<num_rows; i++ )); do
  read -p "Enter row ${i+1} (Date, Description, Category, Amount): " row
  data+=($row)
done

# Create the Markdown table
markdown_table=""
for row in "${data[@]}"; do
  date=$(echo $row | cut -d, -f1)
  description=$(echo $row | cut -d, -f2)
  category=$(echo $row | cut -d, -f3)
  amount=$(echo $row | cut -d, -f4)

  markdown_table+="| ${date} | ${description} | ${category} | ${amount} |"
done

# Print the Markdown table
# echo "$markdown_table"
echo $markdown_table > table.md

