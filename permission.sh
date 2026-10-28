echo "the list of files names in the current directory which have read,write and ecute permissions"
for file in *
do
	if [ -f "$file" ]
	then
		if [ -r "$file" -a -w "$file" -a -x "$file" ]
		then
			ls -l "$file"
		fi
	fi
done
