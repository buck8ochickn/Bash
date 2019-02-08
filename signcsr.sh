#!/bin/sh
#working directory where the csr is located
wd="/home/blank/csr/"
l=$(ls $wd | wc -l)
for i in  $(ls $wd)
do
openssl x509 -req -in "$wd$i"  -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out /home/blank/signed-certs/"$i".crt -days 500 -sha256
done
