echo "Bir sayi giriniz"
read sayi

fact=1

while [[ $sayi -gt 1 ]]
do
	fact=$((fact * sayi))
	sayi=$((sayi-1))
done

echo "Faktoriyeli $fact"