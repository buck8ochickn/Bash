

make a key to be your root key

~~~bash
openssl genrsa -out rootCA.key 2048
~~~

create a self signed cert
~~~bash
openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 1024 -out rootCA.pem
~~~

sign csr requests
~~~bash
openssl x509 -req -in certreqest.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out newcert.crt -days 500 -sha256
~~~

install your self signed cert on hosts you need your new cert to work on

