#!/bin/bash
function standart_bitis 
{
    echo "=============================="
    echo ""
    sleep 1
    read -p  "Çıkmak için ENTER"
    clear
}


bash moduls/first_start.sh

while :
do 
clear
echo "=============================="
echo ""
echo "- Çok amaçlı tool v0.1 -"
echo ""
echo "1 - Exiftool ile meta veri okuma"
echo "2 - Cupp ile wordlist oluştur"
echo "3 - IP-Tracer ile ip adresi takip et"
echo "4 - Netdiscover ile ağ içi arp taraması"
echo "5 - Nmap ile tarama"
echo "6 - Sistemi güncelle"
echo ""
echo "98 - Yapımcı ve lisans bilgileri"
echo "99 - Çıkış"
echo "=============================="
echo ""
echo "Mevcut dizin -> $PWD"
echo "Home dizini -> $HOME"
echo ""
echo "=============================="
echo ""
read -p "-İşlem-> " main_select

if [[ "$main_select" = "1" ]] 
then 
    bash moduls/exiftool.sh

elif [[ "$main_select" = "2" ]]
then
    bash moduls/cupp.sh

elif [[ "$main_select" = "3" ]] 
then   
    bash moduls/ip_tracer.sh

elif [[ "$main_select" = "4" ]]
then
    bash moduls/netdiscover.sh

elif [[ "$main_select" = "5" ]] 
then
	bash moduls/nmap.sh

elif [[ "$main_select" = "6" ]]
then
	bash moduls/sys-update.sh

elif [[ "$main_select" = "98" ]]
then
    bash moduls/lisans.sh

elif [[ "$main_select" = "99" ]]
then
    echo "Çıkış yapılıyor....!"
    sleep 1
    break

else 
    echo "Bilinmeyen girdi...!"
    sleep 1
    clear
fi 
done 
