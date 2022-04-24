echo "Kontroller yapılıyor...!"

while :
do 
    if [[ -d "$HOME/Hack-Tools/nmap" ]] 
    then 
    	echo "Nmap kurulu...!"
    	clear 
    	echo "=============================="
    	echo 
    	echo "- Nmap -"
    	echo "1- Port Servis + versiyon taraması"
    	echo "2- Port servis + versiyon + ayrıntılar "
    	echo "3- Port servis + versiyon + ayrıntılar + agresif tarama"
    	echo "4- Os tespit taraması"
    	echo "5- Standart tarama"
    	echo "6- Tam port taraması (65000+ port + os + versiyon + servis)"
    	echo 
    	echo "98- Nmap versiyonunu göster"
    	echo "99- Çıkış"
    	echo
    	echo "=============================="
    	echo 
    	read -p "-İşlem-> " nmap_select
    	if [[ "$nmap_select" = "1" ]]
    	then
    	    clear
    	    echo "=============================="
    	    echo
    	    read -p "Taranacak ip adresini giriniz -> " nmap_ip
    	    clear
    	    echo 
    	    echo "$nmap_ip'adresi taranıyor...!"
    	    echo
    	    echo "=============================="
    	    echo
    	    sudo nmap -sS -sV -Pn $nmap_ip
    	    echo
    	    echo "=============================="
    	    echo
    	    read -p "Devam etmek için ENTER"
    	elif [[ "$nmap_select" = "2" ]] 
    	then
    	    clear
    	    echo "=============================="
    	    echo 
    	    read -p "Taranacak ip adresini giriniz -> " nmap_ip
    	    clear
    	    echo 
    	    echo "$nmap_ip'adresi taranıyor...!"
    	    echo
    	    echo "=============================="
    	    echo
    	    sudo nmap -sS -sV -Pn -v $nmap_ip
    	    echo 
    	    echo "=============================="
    	    echo
    	    read -p "Devam etmek için ENTER"
    	elif [[ "$nmap_select" = "3" ]] 
    	then
    	    clear
    	    echo "=============================="
    	    echo 
    	    read -p "Taranacak ip adresini giriniz -> " nmap_ip
    	    clear
    	    echo
    	    echo "$nmap_ip'adresi taranıyor...!"
    	    echo 
    	    echo "=============================="
    	    echo 
    	    sudo nmap -sS -sV -Pn -v -A $nmap_ip
    	    echo
    	    echo "=============================="
    	    echo 
    	    read -p "Devam etmek için ENTER"
    	elif [[ "$nmap_select" = "4" ]]
    	then
    	    clear
    	    echo "=============================="
    	    echo
    	    read -p "Taranacak ip adresini giriniz -> " nmap_ip
    	    clear
    	    echo  
    	    echo "$nmap_ip'adresi taranıyor...!"
    	    echo
    	    echo "=============================="
    	    echo
    	    sudo nmap -Pn -O $nmap_ip
    	    echo
    	    echo "=============================="
    	    echo
    	    read -p "Devam etmek için ENTER"
    	elif [[ "$nmap_select" = "5" ]] 
    	then
    	    clear
    	    echo "=============================="
    	    echo 
    	    read -p "Taranacak ip adresini giriniz -> " nmap_ip
    	    clear
    	    echo
    	    echo "$nmap_ip'adresi taranıyor...!"
    	    echo
    	    echo "=============================="
    	    echo
    	    nmap -Pn $nmap_ip
    	    echo
    	    echo "=============================="
    	    echo
    	    read -p "Devam etmek için ENTER"
    	elif [[ "$nmap_select" = "6" ]] 
    	then 
    	    clear
    	    echo "=============================="
    	    echo
    	    read -p "Taranacak ip adresini giriniz -> "
    	    clear
    	    echo
    	    echo "$nmap_ip'adresi taranıyor...!"
    	    echo "Bu işlem saatler sürebilir...!"
    	    echo
    	    echo "=============================="
    	    echo 
    	    sudo nmap -Pn -sS -sV -v -O -p- $nmap_ip
    	    echo 
    	    echo "=============================="
    	    echo
    	    read -p "Devam etmek için ENTER"
    	elif [[ "$nmap_select" = "99" ]]
    	then 
    	    echo "Çıkış yapılıyor...!"
    	    sleep 1
    	    break
    	elif [[ "$nmap_select" = "98" ]]
    	then 
    	    clear
    	    echo "=============================="
    	    echo
    	    nmap --version
    	    echo
    	    echo "=============================="
    	    echo
    	    read -p "Devam etmek için ENTER"
    	else
    	    echo "Bilinmeyen girdi...!"
    	    sleep 1
    	    clear 
    	fi 
    else 
    	if [[ -d "$HOME/Hack-Tools/debian" || -d "$HOME/Hack-Tools/parrot" ]] 
    	then 
    	    echo "nmap kuruluyor...!"
    	    sleep 1
    	    sudo apt-get install nmap -y
    	    clear
    	    mkdir $HOME/Hack-Tools/nmap
    	    sleep 1
    	    echo "=============================="
    	    echo 
    	    echo "Tool başarıyla kuruldu...!"
    	    echo "Toolu menüden çalıştırabilirsiniz...!"
    	    echo 
    	    echo "=============================="
    	    echo 
    	    read -p "Devam etmek için ENTER"
    	    clear 
    	    break
	elif [[ -d "$HOME/Hack-Tools/arch" ]] 
	then 
	    echo "Nmap kuruluyor...!"
	    sleep 1
	    sudo pacman -S nmap -y
	    clear
	    mkdir $HOME/Hack-Tools/nmap
	    sleep 1
	    echo "=============================="
	    echo 
	    echo "Tool başarıyla kuruldu...!"
	    echo "Toolu menüden çalıştırabilirsiniz...!"
	    echo
	    echo "=============================="
	    echo 
	    read -p "Devam etmek için ENTER"
	    clear 
	    break
	else 
	    clear
	    echo "=============================="
	    echo 
	    echo "Kurulum tamamlnmamış lütfen kurulumu tamamlayınız...!"
	    echo
	    echo "=============================="
	    sleep 1
	    exit
	fi 
    fi 
done 
