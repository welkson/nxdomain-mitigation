#!/bin/bash

while IFS= read -r line
    do        
        only_net=$(echo "$line" | sed s/"\/24"//)
        provider=$(whois $only_net | egrep "netname:|owner:|OrgName:")
        echo "$line - $provider"
    done < t.txt
