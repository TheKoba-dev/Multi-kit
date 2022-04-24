#!/bin/bash
echo "Kontroller yapılıyo...!"

if [[ -d "$HOME/Hack-Tools/cupp" ]] 
then
    echo "Cupp kurulu...!"
    echo
    sleep 1 
    clear 
    echo "=============================="
    echo 
    echo "Tool etkileşimli olarak başlatılıyor...!"
    echo 
    python3 $HOME/Hack-Tools/cupp/cupp.py -i -q
    clear    
    echo
    echo "=============================="
    echo 
    echo "Wordlistiniz $PWD'altına oluşturuldu...!"
    echo  
    echo "=============================="
    echo
    read -p "Devam etmek için ENTER"

else

    if [[ -d "$HOME/Hack-Tools/debian" || -d "$HOME/Hack-Tools/parrot" ]]
    then
        clear
        echo "Cupp kuruluyor...!"
        echo 
        sleep 1
        sudo apt-get install -y python3 git 
        sleep 1
        clear
        echo "=============================="
        echo 
        echo "GitHub'dan gerekli dosyalar alınıyor...!"
        echo 
        echo "=============================="
        git clone "https://github.com/Mebus/cupp.git" $HOME/Hack-Tools/cupp   
        clear
        echo "=============================="
        echo 
        echo "Tool balarıyla kuruldu, menüden çalıştırabilirsiniz...!"
        echo
        echo "=============================="
        echo
        sleep 1
        read -p "Devam etmek için ENTER"	
    
    elif [[ -d "$HOME/Hack-Tools/arch" ]]
    then
        clear
        echo "Cupp kuruluyor...!"
        echo 
        sleep 1
        sudo pacman -S perl git -y
        git clone "https://github.com/exiftool/exiftool.git" $HOME/Hack-Tools/exiftool
        sleep 1        
        clear					
        echo "=============================="
        echo ""
	    echo "Tool başarıyla kuruldu...!"
	    echo "Toolu menüden çalıştırabilirsiniz...!"
	    echo ""
	    echo "=============================="
	    echo ""
	    read -p "Çıkmak için ENTER"

    else
        clear
        echo "=============================="
        echo
        echo "Kurulum tamamlanmamış, lütfen kurulumu yapınız...!"
        echo 
        echo "=============================="        
        sleep 2
        exit
    fi

        
fi 
