CREATE DATABASE iamghost;
CREATE USER 'iamghost'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON iamghost.* TO 'iamghost'@'%';
