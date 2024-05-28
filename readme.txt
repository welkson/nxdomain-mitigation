copia logs do pfsense -> dns (/status_logs.php?logfile=resolver) e recupera os blocos (sem duplicidade)
essa lista será importada pelo Palo Alto (Dynamic Lists)
cat ~/Downloads/dns6.txt | grep -i "ifrn.edu.br): view external: rate limit drop response to"  | cut -d ' ' -f17 | sort | uniq

direto no pfsense:
cd /var/log
zgrep -i "ifrn.edu.br): view external: rate limit drop response to" resolver* | cut -d ' ' -f17 | sort | uniq