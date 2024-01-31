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
                    include snippets/fastcgi-php.conf;

                    fastcgi_pass unix:/run/php/php8.1-fpm.sock;
                          }


}
```
