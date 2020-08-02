#!/bin/ksh

LOGIN=login
PASSWORD=passwd

while true
do
 curl -s -o /dev/null \
     -H "Content-Type: application/x-www-form-urlencoded" \
     -H "Referer:https://controller.access.network/103/portal/" \
     -H "User-Agent:Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36" \
     -d "action=authenticate&login=$LOGIN&password=$PASSWORD&policy_accept=false&from_ajax=true"\
     -X POST https://controller.access.network/portal_api.php
 sleep 20
done

