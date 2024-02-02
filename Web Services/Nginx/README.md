# Nginx Web Service

**Install Nginx and PHP-FPM**
```
sudo apt install nginx -y
sudo systemctl restart nginx
sudo apt install php8.2-fpm
sudo systemctl restart nginx
```
> Visit at http://127.0.0.1

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
> PHP-FPM configuration files are stored in /etc/php/8.2/fpm/pool.d/

>webrunner.conf

```
[webrunner]
listen = 127.0.0.1:9834
user = webrunner
group = webrunner
listen.allowed_clients = 127.0.0.1
pm = ondemand
pm.max_children = 250
pm.process_idle_timeout = 10s
pm.max_requests = 100
listen.backlog = 65535
pm.status_path = /status
request_terminate_timeout = 7200s
rlimit_files = 131072
rlimit_core = unlimited
```

**Nginx Reverse Proxy Basic Configuration**
```
server {
        listen 80;
        listen [::]:80;

        root /var/www/html;

        server_name localhost;
location / {
        proxy_pass http://localhost:8080;
        proxy_set_header X-Real-IP  $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto http;
        proxy_set_header X-Forwarded-Port 80;
        proxy_set_header Host $host;
    }
}
```

**Nginx Load Balancer Basic Configuration**
```
upstream backend {
    server server1:8080;
    server server2:8080;
    server server3:8080;
}
server {
        listen 80;
        listen [::]:80;

        root /var/www/html;

        server_name localhost;
location / {
        proxy_pass http://backend;
        proxy_set_header X-Real-IP  $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto http;
        proxy_set_header X-Forwarded-Port 80;
        proxy_set_header Host $host;
    }
}
```
