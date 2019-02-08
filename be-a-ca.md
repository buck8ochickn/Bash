

make a key to be your root key

~~~
openssl genrsa -out rootCA.key 2048
~~~

openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 1024 -out rootCA.pem
