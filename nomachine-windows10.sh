wget -O ng.sh https://github.com/yahy2025/nomachine/raw/main/ngrok.sh > /dev/null 2>&1
chmod +x ng.sh
./ng.sh


function goto
{
    label=$1
    cd 
    cmd=$(sed -n "/^:[[:blank:]][[:blank:]]*${label}/{:a;n;p;ba};" $0 | 
          grep -v ':$')
    eval "$cmd"
    exit
}

: ngrok
clear

CRP=2F02TjUcd0E8CjhiGl2QyJhm49C_2QjaJSF85gzAcWw4G45jF
./ngrok authtoken $CRP 


sleep 1

docker run --rm -d --network host --privileged --name nomachine-xfce4 -e PASSWORD=123456 -e USER=user --cap-add=SYS_PTRACE --shm-size=1g thuonghai2711/nomachine-ubuntu-desktop:windows10
clear
echo "NoMachine: https://www.nomachine.com/download"
echo Done! NoMachine Information:
echo IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p' 
echo User: user
echo Passwd: 123456
echo "VM can't connect? Restart Cloud Shell then Re-run script."
seq 1 86400 | while read i; do echo -en "\r Running .     $i s /86400 s";sleep 0.1;echo -en "\r Running ..    $i s /86400 s";sleep 0.1;echo -en "\r Running ...   $i s /86400 s";sleep 0.1;echo -en "\r Running ....  $i s /86400 s";sleep 0.1;echo -en "\r Running ..... $i s /86400 s";sleep 0.1;echo -en "\r Running     . $i s /86400 s";sleep 0.1;echo -en "\r Running  .... $i s /86400 s";sleep 0.1;echo -en "\r Running   ... $i s /86400 s";sleep 0.1;echo -en "\r Running    .. $i s /86400 s";sleep 0.1;echo -en "\r Running     . $i s /86400 s";sleep 0.1; done
