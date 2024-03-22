#!/bin/bash
if [ $# -eq 0 ]; then
        echo "Usage: $0 <domain>"
        exit 1
fi

domain=$1

assetfinder -subs-only "$domain" | sort -u | httprobe | httpx -status-code -title -tech-detect -follow-redirects
