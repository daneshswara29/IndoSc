#!/bin/bash
BURIQ () {
    curl -sS https://raw.githubusercontent.com/daneshswara29/IP/main/regis > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/daneshswara29/IP/main/regis | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/daneshswara29/IP/main/regis | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION

if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/daneshswara29/IP/main/regis | grep $MYIP | awk '{print $3}')
fi

# =========================================
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
# TOTAL ACC CREATE  VLESS WS
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
# TOTAL ACC CREATE  TROJAN
trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let tra=$trx/2
# TOTAL ACC CREATE OVPN SSH
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

# // Exporting Language to UTF-8
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
#Download/Upload today
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
clear

# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'


# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))

persenmemori="$(echo "scale=2; $usmem*100/$tomem" | bc)"
#persencpu=
persencpu="$(echo "scale=2; $cpu1+$cpu2" | bc)"

# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"

# // Clear
clear
clear && clear && clear
clear;clear;clear
cek=$(service ssh status | grep active | cut -d ' ' -f5)
if [ "$cek" = "active" ]; then
stat=-f5
else
stat=-f7
fi
ssh=$(service ssh status | grep active | cut -d ' ' $stat)
if [ "$ssh" = "active" ]; then
ressh="${BIBlue}ON${NC}"
else
ressh="${red}OFF${NC}"
fi
sshstunel=$(service stunnel4 status | grep active | cut -d ' ' $stat)
if [ "$sshstunel" = "active" ]; then
resst="${BIBlue}ON${NC}"
else
resst="${red}OFF${NC}"
fi
sshws=$(service ws-stunnel status | grep active | cut -d ' ' $stat)
if [ "$sshws" = "active" ]; then
ressshws="${BIBlue}ON${NC}"
else
ressshws="${red}OFF${NC}"
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${BIBlue}ON${NC}"
else
resngx="${red}OFF${NC}"
fi
dbr=$(service dropbear status | grep active | cut -d ' ' $stat)
if [ "$dbr" = "active" ]; then
resdbr="${BIBlue}ON${NC}"
else
resdbr="${red}OFF${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${BIBlue}ON${NC}"
else
resv2r="${red}OFF${NC}"
fi
today=$(date -d "0 days" +"%Y-%m-%d")
Exp1=$(curl https://raw.githubusercontent.com/daneshswara29/IP/main/regis | grep $MYIP | awk '{print $3}')
if [[ $today < $Exp1 ]]; then
    sts="${Info}"
else
    sts="${Error}"
fi
DATE=$(date +'%Y-%m-%d')
datediff() {
    d1=$(date -d "$1" +%s)
    d2=$(date -d "$2" +%s)
    echo -e "$COLOR1 $NC Expiry In   : $(( (d1 - d2) / 86400 )) Days"
}
mai="datediff "$Exp" "$DATE""

today=`date -d "0 days" +"%Y-%m-%d"`

# CERTIFICATE STATUS
d1=$(date -d "$exp" +%s)
d2=$(date -d "$today" +%s)
certificate=$(( (d1 - d2) / 86400 ))
export sem=$( curl -s https://raw.githubusercontent.com/daneshswara29/IndoSc/main/versi)
export pak=$( cat /opt/.ver)
IPVPS=$(curl -s ipinfo.io/ip )
clear
echo -e "${BIBlue} ┌─────────────────────────────────────────────────────┐${BIBlue}"
echo -e "   ${BIBlue}                  ${BIBlue}DANESHSWARA ${BIBlue}VPN ${BIBlue}"
echo -e "   ${BIBlue}□ Server Uptime       = ${BIBlue}$( uptime -p  | cut -d " " -f 2-10000 ) ${BIBlue}"
echo -e "   ${BIBlue}□ Current Time        = ${BIBlue}$( date -d "0 days" +"%d-%m-%Y | %X" )${BIBlue}"
echo -e "   ${BIBlue}□ Operating System    = ${BIBlue}$( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g' ) ( $( uname -m) )${BIBlue}"
echo -e "   ${BIBlue}□ Current Domain      = ${BIBlue}$( cat /etc/xray/domain )${BIBlue}"
echo -e "   ${BIBlue}□ NS Domain           = ${BIBlue}$( cat /etc/xray/dns )${BIBlue}"
echo -e "   ${BIBlue}□ Jumlah Ram          = ${BIBlue}${totalram}MB"
echo -e "   ${BIBlue}□ CPU Usage           = ${BIBlue}$cpu_usage"
echo -e "   ${BIBlue}□ IP-VPS              = ${BIBlue}$IPVPS ${BIBlue}"
echo -e "${BIBlue}└─────────────────────────────────────────────────────┘${BIBlue}"
echo -e "${BIBlue}  ┌──────────────────────────────────────────────────┐${BIBlue}" 
echo -e "${BIBlue}  │  \033[0m ${BOLD}${BIBlue}SSH     VMESS       VLESS      TROJAN $BIBlue" 
echo -e "${BIBlue}  │  \033[0m ${BIBlue} $ssh1        $vma           $vla          $tra   $BIBlue" 
echo -e "${BIBlue}  └──────────────────────────────────────────────────┘${BIBlue}"  
echo -e "     ${BIBlue} SSH ${BIBlue}: $ressh"" ${BIBlue} NGINX ${BIBlue}: $resngx"" ${BIBlue}  XRAY ${BIBlue}: $resv2r"" ${BIBlue} TROJAN ${BIBlue}: $resv2r"
echo -e "   ${BIBlue}     STUNNEL ${BIBlue}: $resst" "${BIBlue} DROPBEAR ${BIBlue}: $resdbr" "${BIBlue} SSH-WS ${BIBlue}: $ressshws"
echo -e "${BIBlue} ┌─────────────────────────────────────────────────────┐${BIBlue}"
echo -e " ${BIBlue}|    [${BIBlue}01${BIBlue}] SSH     ${BIBlue}[${BIBlue}Menu${BIBlue}]${BIBlue}"    "     ${BIBlue}[${BIBlue}06${BIBlue}] TRIALL    ${BIBlue}[${BIBlue}Menu${BIBlue}]${BIBlue}" "${BIBlue}  │"
echo -e " ${BIBlue}|    [${BIBlue}02${BIBlue}] VMESS   ${BIBlue}[${BIBlue}Menu${BIBlue}]${BIBlue}" "     ${BIBlue}[${BIBlue}07${BIBlue}] BACKUP    ${BIBlue}[${BIBlue}Menu${BIBlue}]${BIBlue}" "${BIBlue}  │"
echo -e " ${BIBlue}|    [${BIBlue}03${BIBlue}] VLESS   ${BIBlue}[${BIBlue}Menu${BIBlue}]${BIBlue}"  "     ${BIBlue}[${BIBlue}08${BIBlue}] SETTING   ${BIBlue}[${BIBlue}Menu${BIBlue}]${BIBlue}" "${BIBlue}  │"
echo -e " ${BIBlue}|    [${BIBlue}04${BIBlue}] TROJAN  ${BIBlue}[${BIBlue}Menu${BIBlue}]${BIBlue}" "     ${BIBlue}[${BIBlue}09${BIBlue}] RUNNING            │"
echo -e " ${BIBlue}|    [${BIBlue}05${BIBlue}] SSWS    ${BIBlue}[${BIBlue}Menu${BIBlue}]${BIBlue}"  "     ${BIBlue}[${BIBlue}10${BIBlue}] SET REBOOT${BIBlue}[${BIBlue}Menu${BIBlue}]${BIBlue}" "${BIBlue}  │${BIBlue}"
echo -e " ${BIBlue}└─────────────────────────────────────────────────────┘${BIBlue}"
echo -e "${BIBlue} ┌─────────────────────────────────────────────────────┐${BIBlue}"
echo -e " ${BIBlue}│    [${BIBlue}11${BIBlue}] BOT TELEGRAM${BIBlue} "
echo -e " ${BIBlue}│    [${BIBlue}12${BIBlue}] REGISTRASI IPVPS BARU${BIBlue} "
echo -e " ${BIBlue}│    [${BIBlue}13${BIBlue}] CLEAR SAMPAH${BIBlue} "
echo -e " ${BIBlue}│    [${BIBlue}14${BIBlue}] CEK AKUN${BIBlue} "
echo -e " ${BIBlue}│    [${BIBlue}15${BIBlue}] INSTALL UDP${BIBlue} "
echo -e " ${BIBlue}│    [${BIBlue}16${BIBlue}] BACKUP TO GITHUB ${BIBlue}[${BIBlue}Menu${BIBlue}]${BIBlue} "
echo -e "${BIBlue} └─────────────────────────────────────────────────────┘${BIBlue}"
echo -e "${BIBlue} ┌─────────────────────────────────────────────────────┐${BIBlue}"
echo -e "${BIBlue} │$BIBlue ${BIBlue}HARI ini${BIBlue}: ${BIBlue}$ttoday$BIBlue ${BIBlue}KEMARIN${BIBlue}: ${BIBlue}$tyest$BIBlue ${BIBlue}BULAN${BIBlue}: ${BIBlue}$tmon$BIBlue $BIBlue"
echo -e "${BIBlue} └─────────────────────────────────────────────────────┘${BIBlue}"
echo -e " ${BIBlue}┌─────────────────────────────────────┐${BIBlue}"
echo -e " ${BIBlue}│  Version      ${BIBlue} : ${BIBlue}${sem} ${BIBlue}Last Update ${BIBlue}"
echo -e " ${BIBlue}│  User         ${BIBlue} :${BIBlue} ${Name} ${BIBlue}"
echo -e " ${BIBlue}│  Day Expired${BIBlue}   :${BIBlue} ${Exp}${BIBlue} ${sts}"
echo -e " ${BIBlue}└─────────────────────────────────────┘${BIBlue}"
echo ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; menu-ssh ;;
2) clear ; menu-vmess ;;
3) clear ; menu-vless ;;
4) clear ; menu-trojan ;;
5) clear ; menu-ssws ;;
6) clear ; menu-trial ;;
7) clear ; menu-backup ;;
8) clear ; menu-set ;;
9) clear ; running ;;
10) clear ; jam ;;
11) clear ; m-bot ;;
12) clear ; m-ip ;;
13) clear ; clearcache ;;
14) clear ; cat /etc/log-create-user.log ;;
15) clear ; wget https://raw.githubusercontent.com/daneshswara29/IndoSc/main/udpcustom/udp-custom.sh && chmod +x udp-custom.sh && ./udp-custom.sh ;;
16) clear ; menu-bckp ;;
0) clear ; menu ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu ;;
esac
