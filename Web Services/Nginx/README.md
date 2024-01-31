# Nginx Web Service

**Install Nginx**
```
sudo apt install nginx -y
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
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }


}



```
