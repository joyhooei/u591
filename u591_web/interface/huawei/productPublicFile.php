<?php
header("Content-Type: text/html; charset=utf-8");

$filename = dirname(__FILE__)."/payPublicKey1.pem";
	
	@chmod($filename, 0777);
	@unlink($filename);

$devPubKey = "MIICXQIBAAKBgQDI4SPIwGx78Qn5q8jqIFXxnQJTqZFKCKz9/dKjFz/1Vf3ecOfGnTh/HkkSqF/Z8wSkoxqPIUf46bd6hAYVqfINHv5elVt87wZacZdESg+Aw3jobcOXVkEt2ezELkG8xtSxvu0kv3lFCZ1SP4uib3exovOyaefXQJYivciVUHk1LwIDAQABAoGBALHPsBg0VBLFwvmw2LB9nPW48GVT9Jpe4ZoWQoxAuUmWK5jpwg/p/SdwjGgqiGXpGlQNWCYX5JhtcQ7OrIAipXDri8SYysUTJZfvvK3exqzy9MlImmkM0lXVBlRdPfl54nGkWZuiQ/nr09uxS2T0W0akLMI0VrjAv5AdWQwNmHMhAkEA8gw7YHOaKGRVt+AvMyYSoNTltMX0+Z0B9023ozK3vEqjdUsndZ8vTGnXBW8YlFAF+g7TJN2dzJtYTNrwE30OUQJBANR1aLr2AgUfLsnNVZCwelI0Zaer13QAdOnlxPHjTCAtJcP1dMUTm2LlNNpYdN6A3X9n8/LIYxrYahounrwvq38CQB7owvhZKtl3np6hiUV92ikhpsfD87mgfCzJhubXRjFMUr1awIo7rr2SUnwGKNxfr7O0CvCNQGZtfAQsfTXv5VECQCdTkE5DKT6Pdhaupm8A67N5tXNi8J+tUfbVrC3mF/pAwSPTtIiiR3n32V+tTfy9t8JUmKhRBV87vfAYvxMwc7sCQQDQ60/rXzpcO3N//RgkaJgyrXfp2STjDIBQSwvH/ySKCSIclGpB5PvYOXBsSu6qrvWq7vhzBMkKcjvjn3cXRg+D";
// $begin_public_key = "-----BEGIN PUBLIC KEY-----\r\n";
// $end_public_key = "-----END PUBLIC KEY-----\r\n";
$begin_public_key = "-----BEGIN RSA PRIVATE KEY-----\r\n";
$end_public_key = "-----END RSA PRIVATE KEY-----\r\n";


$fp = fopen($filename,'ab');
fwrite($fp,$begin_public_key,strlen($begin_public_key)); 

$raw = strlen($devPubKey)/64;
$index = 0;
while($index <= $raw )
{
	$line = substr($devPubKey,$index*64,64)."\r\n";
	if(strlen(trim($line)) > 0)
	fwrite($fp,$line,strlen($line)); 
	$index++;
}
fwrite($fp,$end_public_key,strlen($end_public_key)); 
fclose($fp);
?>

