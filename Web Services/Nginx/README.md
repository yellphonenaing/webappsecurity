# Nginx Web Service

**Install Nginx and PHP-FPM**
```
sudo apt install nginx -y
sudo systemctl restart nginx
sudo apt install php8.2-fpm
sudo systemctl restart nginx
```
> Visit your web with http://127.0.0.1

> Nginx configuration files are stored in /etc/nginx

**Basic Nginx Site Configuration**
```
server {
        listen 80;
        listen [::]:80;

        root /var/www/html;

        server_name localhost;

        location / {
                try_files $uri $uri/ =404;
        }


}
```

**Nginx with PHP FastCGI Configuration**
```
server {
        listen 80;
        listen [::]:80;

        root /var/www/html;

        server_name localhost;

        location / {
                try_files $uri $uri/ =404;
        }
       location ~ \.php$ {
    include fastcgi_params;
    fastcgi_intercept_errors on;
    fastcgi_index index.php;
    fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
    try_files $uri =404;
    fastcgi_read_timeout 3600;
    fastcgi_send_timeout 3600;
    fastcgi_param HTTPS "on";
    fastcgi_param SERVER_PORT 443;
    fastcgi_pass 127.0.0.1:9834;
    fastcgi_param PHP_VALUE "
memory_limit=512M;
max_execution_time=60;
max_input_time=60;
max_input_vars=10000;
post_max_size=64M;
upload_max_filesize=64M;
date.timezone=UTC;
display_errors=off;";
  }


}
```
