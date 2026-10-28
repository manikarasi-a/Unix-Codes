echo "Enter file name:"
read file
awk '!/[aeiouAEIOU]/{
count++
}
END {
print "the number of lines that do not contain vowels are:",count
}' "$file"
