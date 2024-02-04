# Apache2 Web Service

**Install Apache2 Web Service**
```
sudo apt install apache2
systemctl restart apache2 (If nginx is running, run `systemctl stop nginx` first)
```
> Visit at http://127.0.0.1

> Apache2 configuration files are stored in /etc/apache2


**Basic Apache2 Site Configuration**
```
<VirtualHost *:80>

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html/
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
```

**Apache2 with PHP FastCGI Configuration**
```
<VirtualHost *:80>

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html/
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
<FilesMatch \.php$>
        SetHandler "proxy:fcgi://127.0.0.1:9834"
    </FilesMatch>
</VirtualHost>
```

**Enable htaccess in Apache2**
```
<Directory /var/www/>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
</Directory>
```

**Rewrite Engine in Apache2 htaccess**
```
sudo a2enmod rewrite
sudo systemctl restart apache2
```

> enable Rewrite Engine in .htaccess
```
<IfModule mod_rewrite.c>
    RewriteEngine On
    # rewrite rules are here
</IfModule>
```
