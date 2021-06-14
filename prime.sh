echo "Lütfen bir sayi giriniz: "
read n

echo "---------------------"
echo "Asal Sayılar"
count=0

for((i=1; i<=n; i++))
do
			
	flag=0

	if [[ $i -ge 2 ]]
	then
		for((j=2; j<$(( $i/2 + 1 )); j++))
	        do
	
	                if [[ $(($i % $j)) -eq 0 ]]
	                then
	                        flag=1
	                fi
                done
        fi
        
	
	if [[ $flag -eq 1 ]]
        then
                echo -e -n " "
        
	
	elif [[ $i -eq 1 ]]
        then
                echo -e -n " "
		
	 
	else
		((count=$count + 1))
		echo -n -e "\n F($count)=$i"
        fi				
		
done
echo -e "\n"