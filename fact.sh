echo "Factorial program"
echo "Enter the number"
read n
f=1
i=1
while [ $i -le $n ]
do
	f=$((f * i))
	i=$((i + 1))
done
echo "factorial of $n is : $f"
