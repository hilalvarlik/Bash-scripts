limit=4100200300
echo "Lütfen bir sayi giriniz (Max: 4.100.200.300):"
read n

while [ $n -gt $limit ]
do
	echo "Hatalı sayi girdiniz. Tekrar bir sayi giriniz: "
        read n
done

echo "---------------------"
echo "Fibonacci Serisi"

a=0
b=1
c=0
echo -n -e "\n F(1) = $a"
echo -n -e "\n F(2) = $b"

for((i=0; i<n; i++))
do	
	for ((k=3; k<n; k++))
	do
		((c=$a + $b))
		
		if [ $c -gt $n ]
		then
		        break;

		else
		        dizi=$(echo "F($k) = $c")
			echo -n -e "\n $dizi"
			a=$b
		        b=$c	
		fi

	done
done
echo -e "\n"
