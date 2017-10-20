#!/bin/bash
# to manualy update the  DA license



license_id="$(awk -F= '$1=="lid" {print $2}' /usr/local/directadmin/scripts/setup.txt)"
license_ip="$(awk -F= '$1=="ip" {print $2}' /usr/local/directadmin/scripts/setup.txt)"
echo $license_id
echo $license_ip

cd /usr/local/directadmin/scripts/
./getLicense.sh 2178 ${license_id} ${license_ip}
service directadmin restart
