echo "enter the file to display empty lies"
read file
l=$(grep -c '^$' "$file")
echo "number of empty lines in $file is $l"
