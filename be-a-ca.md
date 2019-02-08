

make a key to be your root key

~~~
openssl genrsa -out rootCA.key 2048
~~~

create a self signed cert
~~~
openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 1024 -out rootCA.pem
~~~

sign csr requests
~~~
openssl x509 -req -in certreqest.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out newcert.crt -days 500 -sha256
~~~

install your self signed cert

