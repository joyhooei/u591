<?php 
$file = "-----BEGIN RSA PRIVATE KEY-----
MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAL9nq0MHciPvjVgC
Ta2yEUm6enG9zDKLKTJC4HVhP1CYnwbgc29LU8ngxnQmpCizrpKeUsjBwNNmZ/aM
23jEaPYgvh1FrtUblwtjPkZReSmhbsCAvqQYkh7Q6+fgUArmeSHkVBKIWoVGrF3K
fL7T+aUEIUQ88dstAhknXXYqBHLnAgMBAAECgYEAujWTCfzecFOHQM3M4GTSKNZA
dRNe6vUzuPATCl73h+NTIw+NfgLcmxQQPcOyBN75wS5B/4lvnLqN/fB/O/ho2wp8
UzdGbXw0Tk3jc/MiRMfFU6oi6Km/Q0SxWjKngdFq3LHF+f1ue6/0rat6L5ukk/lh
6h0OdcpF3u8kyMGznfECQQDu8uzez7+Hbqc51kfutm0jp8e8tkCwtjZoO5X36hmy
mmbsJLitqToG2NSeuejJdZv+C52pgoBSGJUjNa8IqTLLAkEAzRA4Iv3/hlq7SEq/
bOTl1unyPT2keR3XUgx076zGsbYOXL0ORlyeBkmLJVJBCdD95NLAciOHX13KX8yN
paGQ1QJAcfiGiKP4i8V4l7qgJrj2h4owV89qPZ87hi3dkxki1rCUpM/DEnnkBn4H
tAmigezJ0buCoOZxBDdbcybY7L2fTwJAfS5Ehp/1h8gFgfkXaFtHL237EYV6zPD5
i73M+K7JUJzpoZVLjIpncUEd7zeKOnrZMwGwtzyXHBF+RAL0CUNazQJBAJTaWl3P
4iP53O4EqXFJ1AQV7tqwa/7w48AioY9dCMLv/9kZe9sbB0OKo1O18bRVXgmpuxWI
4pO4mcYESN+7/3w=
-----END RSA PRIVATE KEY-----";
echo openssl_pkey_get_private($file);