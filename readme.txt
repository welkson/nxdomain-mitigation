copia logs do pfsense -> dns (/status_logs.php?logfile=resolver) e recupera os blocos (sem duplicidade)
essa lista será importada pelo Palo Alto (Dynamic Lists)
cat ~/Downloads/dns.txt | cut -d ' ' -f18  | sort | uniq  > attackers.txt
