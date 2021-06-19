# maksimum sayı verilir
limit=4100200300
# kullanıcıdan sayı girişi istenir ve okunur
echo "Lütfen bir sayi giriniz (Max: 4.100.200.300):"
read n 

# girilen sayı maksimum sayıdan büyükse tekrar giriş istenir. Doğru giriş
# saglanana kadar devam eder
while [ $n -gt $limit ]
do
	echo "Hatalı sayi girdiniz. Tekrar bir sayi giriniz: "
        read n

done

echo "---------------------"
echo "Fibonacci Serisi"
# fibonacci serisinin ilk değerleri verilir
a=0
b=1
c=0
echo -n -e "\n F(1) = $a"
echo -n -e "\n F(2) = $b"

# fibonacci serisi için döngü oluşturulur
for((i=0; i<n; i++))
do
	# sayaç değeri için döngü oluşturulur
	for ((k=3; k<n; k++))
	do
		# fibonacci serisi için son iki sayı toplanır
		((c=$a + $b))
		
		# serinin son değeri  girilen sayıdan büyükse işlem durdurulur
		if [ $c -gt $n ]
		then
		        break;

		# değilse işlem devam eder
		else
			
			# buradaki regex ifadesi noktalı sayı elde etmek içindir.
		        dizi=$(echo "F($k) = $c" | sed ':a;s/\B[0-9]\{3\}\>/,&/;ta')
			
			# bayrak değeri verilir
		        flag=0

		        echo -n -e "\n $dizi" 
			
			# serinin son değeri 2'den büyük olduğu durumda
			# asallık kontrolü yapılacaktır 
		        if [[ $c -ge 2 ]]
		        then
	
	                for((j=2; j<$(( $c/2 + 1 )); j++))
	                do
	
				# asallık kontrolü için serinin son sayısının 
				# bölünebilirliğine bakılır. Mod sonucu 0 ise flag değeri 1 yapılır
		                if [[ $(($c % $j)) -eq 0 ]]
		                then
		                        flag=1
		                fi
	                done
		        fi
        
			# flag değeri 1 ise sayının asal olmadığı bulunur
			if [[ $flag -eq 1 ]]
		        then
		                echo -e -n " "
        
			# 1 asal sayı olmadığı için ayrıca kontrolü yapılır
			elif [[ $c -eq 1 ]]
		        then
		                echo -e -n " "
		
			# flag'in 0 olduğu durumda ise sayının asal olduğu bulunur 
			else
		                echo -e -n " ---> Asal sayı"

		        fi
		        a=$b
		        b=$c

		fi
	done
done