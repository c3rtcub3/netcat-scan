# Netcat-Port-Scan-PPSS
Port scan using Netcat and PPSS



Commands
  1) Enter Ip address in ips.txt file
  2) Install PPSS from (https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/ppss/ppss_2.97_noarch.deb)
  3) Execute command 
        a) ppss -f ips.txt -c 'bash script1.sh "$ITEM"' -p 10
   
   4) After PPSS-netcat scan is complete execute port-scan.sh bash file. It will use Nmap to scan the opened port found by netcat and save in port scan folder. 
