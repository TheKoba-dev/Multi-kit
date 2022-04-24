#!/bin/bsh
clear
echo "Kontroller yapılıyor...!"
sleep 1
while :
do 
    if [[ -d "$HOME/Hack-Tools/IP-Tracer" ]]
    then
        echo "IP-Tracer kurulu...!"
        echo 
        clear
        echo "=============================="
        echo    
        echo "- IP-tracer -"
        echo "1- Kendi ip adresini sorgula"
        echo "2- Belirli bir ip adresini sorgula"
        echo "3- Tool'u güncelle"
        echo
        echo "99- Çıkış"
        echo 
        echo "=============================="
        read -p "-İşlem-> " ip_tracer_slc    
        echo 
        clear
        if [[ "$ip_tracer_slc" = "1" ]]
        then
            cd $HOME/Hack-Tools/IP-Tracer
            bash ip-tracer -m 
            echo 
            echo "=============================="
            echo 
            read -p "Devam etmek için ENTER"

        elif [[ "$ip_tracer_slc" = "2" ]]
        then
            clear 
            echo "=============================="
            echo 
            read -p "Sorgulanacak ip adresini giriniz -> "
            echo 
            echo "=============================="
            echo 
            cd $HOME/Hack-Tools/IP-Tracer
            bash ip-tracer -t $REPLY
            echo 
            echo "=============================="
            echo 
            read -p "Devam etmek için ENTER"
            clear

        elif [[ "$ip_tracer_slc" = "99" ]]
        then 
            echo "Çıkış yapılıyor...!"
            sleep 1
            break
        elif [[ "$ip_tracer_slc" = "3" ]]
        then
            echo "Bu alan çok yakında eklenecek...!"
            sleep 1
            clear
        else
            echo "Bilinmeyen girdi...!"
            sleep 1
            clear
        fi 
    else 
        if [[ -d "$HOME/Hack-Tools/debian" || -d "$HOME/Hack-Tools/parrot" ]]
        then
            clear
            echo 
            echo "IP-Tracer kuruluyor...!"
            echo "Gereksinimler kuruluyor...!"
            sleep 1
            sudo apt-get install -y git
            sleep 1
            clear
            echo 
            echo "GitHub'dan gerekli dosyalar alınıyor...!"
            sleep 1            
            git clone https://github.com/rajkumardusad/IP-Tracer.git $HOME/Hack-Tools/IP-Tracer
			chmod +x $HOME/Hack-Tools/IP-Tracer/install 
            chmod +x $HOME/Hack-Tools/IP-Tracer/ip-tracer
            bash $HOME/Hack-Tools/IP-Tracer/install 
            clear
			echo "=============================="
			echo ""			
            echo "Kurulum başarılı....!"					
            echo "Toolu menüden çalıştırbilirsiniz....!"
		    echo ""
			echo "=============================="
			sleep 1
            echo
			read -p "Devam etmek için ENTER"
        elif [[ -d "$HOME/Hack-Tools/arch" ]]
        then 
            clear
            echo 
            echo "IP-Tracer kuruluyor...!"
            echo "Gereksinimler indiriliyor...!"
            sleep 1
            sudo pacman -S git -y
            sleep 1
            clear
            echo 
            echo "GitHub'dan gerekli dosyalar alınıyor...!"
            git clone https://github.com/rajkumardusad/IP-Tracer.git $HOME/Hack-Tools/IP-Tracer
			chmod +x $HOME/Hack-Tools/IP-Tracer/install 
            chmod +x $HOME/Hack-Tools/IP-Tracer/ip-tracer
            bash $HOME/Hack-Tools/IP-Tracer/install 
            clear 
            echo "=============================="
            echo 
            echo "Kurulum başarılı...!"
            echo "Toolu menüden çalıştırabilirsiniz...!"
            echo 
            echo "=============================="
            sleep 1
            echo 
            read -p "Devam etmek için ENTER"
        else 
            clear 
            echo "=============================="
            echo 
            echo "Kurulum yapılmamış...!"
            echo    
            echo "=============================="
            exit
        fi     
    fi
done





