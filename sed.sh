echo "enter the file to select the line linux"
read file
l1=$(sed -n '/^n/p' "$file:")
echo "Lines beginning with n in $file:"
echo "$l1"
