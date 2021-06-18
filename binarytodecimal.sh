echo -n "Bir sayi giriniz: "
read -r b
if [[ $b -eq 0 ]]
then
        echo "Geçerli bir sayi giriniz "
        return
else
        while [[ $b -ne 0 ]]
        do
                d=0
                p=1
                while [[ $b -ne 0 ]]
                do
                        rem=$((b % 10))
                        d=$((d + (rem * p)))
                        p=$((p * 2))
                        b=$((b / 10))
                done
                echo "Sayının decimali $d"
        done
fi