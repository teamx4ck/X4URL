#x4ck
clear
url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}
toilet -f mono12 -F gay "X4URL""
echo -e "# Developed by TEAM X4CK"
echo -n "Paste Phishing URL here (with http or https): "
read phish
url_checker $phish
sleep 1
echo "Processing your data....."
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -n 'Enter Your phishing platform : '
read mask
echo -n 'Enter topic : '
read words
echo -e "\nPlease wait... x4url is processing ....\n"
final=$mask-$words@$shorter
echo -e "Done! your short URL:\e[32m ${final} \e[0m\n"
