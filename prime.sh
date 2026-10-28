echo "Enter the number"
read n
if [ $n -lt2 ];
then
	echo "$n is not a prime number"
	exit 0
fi
i=2
while [ $i -lt $n ];
do
	if [ $(expr $n % $i) -eq 0 ];
	then
		echo "$n is not a prime number"
		exit 0
	fi 
	i=$(expr $i+1)
done 
echo "$n is a prime number"
