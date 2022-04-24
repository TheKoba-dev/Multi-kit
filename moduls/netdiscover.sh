clear
echo "Kontroller yapılıyor...."
while :
do 

    if [[ -d "$HOME/Hack-Tools/netdiscover" ]]
    then
        echo "Netdiscover kurulu...!"
        clear
        echo "=============================="
        echo 
        echo "Q ya basarak netdiscover'dan çıkabilirsiniz!"
        echo 
        echo "=============================="
        echo ""
        read -p "Anladım ENTER"
        sudo netdiscover 
        echo
        echo "=============================="
        echo
        read -p "Devm etmek için ENTER"
        break 
        clear
    else

        if [[ -d "$HOME/Hack-Tools/debian" || -d "$HOME/Hack-Tools/parrot" ]]
        then
            echo "Netdiscover kuruluyor...!"
            sleep 1
            sudo apt-get install netdiscover -y 
            clear
            mkdir $HOME/Hack-Tools/netdiscover 
            echo "=============================="
            echo 
            echo "Tool başarıyla kuruldu...."
            echo "Toolu menüden çalıştırabilirsiniz...!"
            echo 
            echo "=============================="
            echo
            read -p "Devam etmek için ENTER"
            break
            clear
        elif [[ -d "$HOME/Hack-Tools/arch" ]]
        then
            echo "Netdiscover kuruluyor...!"
            sleep 1
            sudo pacman -S netdiscover -y
            clear 
            mkdir $HOME/Hack-Tools/netdiscover
            echo "=============================="
            echo 
            echo "Tool başarıyla kuruldu...!"
            echo "Toolu menüden çalıştırabilirsiniz...!"
            echo 
            echo "=============================="
            echo 
            read -p "Devam etmek için ENTER"
        else
            echo "=============================="
            echo
            echo "Kurulum yapılmamış lütfen kurulumu yapınız...!"
            echo 
            echo "=============================="
            sleep 1
            exit 
        fi 
    fi
done 