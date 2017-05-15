#!/bin/bash
openssl req -x509 -nodes -newkey rsa:2048 -days $((365 * 5 + 1)) -keyout  privkey.pem -out cacert.pem -config ./openssl.cnf
cat cacert.pem privkey.pem > ../undercloud.pem
