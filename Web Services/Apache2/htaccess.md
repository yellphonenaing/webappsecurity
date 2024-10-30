
# .htaccess Basics

The `.htaccess` file is a powerful configuration file for Apache servers, allowing you to control URL rewriting, redirects, access restrictions, and other server-side rules.

## 1. Enabling .htaccess Files

To enable `.htaccess`, ensure the following line is in the server's configuration file (`httpd.conf` or similar):
```apache
AllowOverride All
```

## 2. Redirects

### Permanent Redirect (301)
Redirect users from one URL to another permanently.
```apache
Redirect 301 /old-page.html http://www.example.com/new-page.html
```

### Temporary Redirect (302)
Temporary redirect for testing purposes.
```apache
Redirect 302 /temp-page.html http://www.example.com/temp-page.html
```

## 3. URL Rewriting

### Enable Rewrite Engine
The rewrite engine must be enabled for URL rewriting rules to work.
```apache
RewriteEngine On
```

### Basic Rewrite Rule
Redirects all traffic from `/old-page` to `/new-page`.
```apache
RewriteRule ^old-page$ /new-page [L]
```

### Redirect www to Non-www
Redirects from `www.example.com` to `example.com`.
```apache
RewriteCond %{HTTP_HOST} ^www\.example\.com [NC]
RewriteRule ^(.*)$ http://example.com/$1 [L,R=301]
```

### Redirect Non-www to www
Redirects from `example.com` to `www.example.com`.
```apache
RewriteCond %{HTTP_HOST} !^www\. [NC]
RewriteRule ^(.*)$ http://www.%{HTTP_HOST}/$1 [L,R=301]
```

## 4. Custom Error Pages

Specify custom error pages for different HTTP status codes.
```apache
ErrorDocument 404 /custom_404.html
ErrorDocument 500 /custom_500.html
```

## 5. Access Restrictions

### Restrict Access by IP Address
Allow only specific IP addresses access to a directory or file.
```apache
<Files "admin">
  Order Deny,Allow
  Deny from all
  Allow from 123.45.67.89
</Files>
```

### Password Protect a Directory
Use `.htpasswd` with `.htaccess` to require a password for directory access.
```apache
AuthType Basic
AuthName "Restricted Area"
AuthUserFile /path/to/.htpasswd
Require valid-user
```

## 6. Cache Control

Set cache expiration to reduce server load and improve load time.
```apache
<IfModule mod_expires.c>
  ExpiresActive On
  ExpiresByType image/jpg "access 1 month"
  ExpiresByType image/jpeg "access 1 month"
  ExpiresByType image/gif "access 1 month"
  ExpiresByType image/png "access 1 month"
  ExpiresByType text/css "access 1 month"
  ExpiresByType application/pdf "access 1 month"
</IfModule>
```

## 7. Disable Directory Browsing

Prevent users from viewing a list of files in directories without an index file.
```apache
Options -Indexes
```

## 8. MIME Types

Specify custom MIME types for different file extensions.
```apache
AddType application/pdf .pdf
AddType audio/mp3 .mp3
```

## 9. Virtual Routing

Virtual routing can help make URLs more user-friendly by creating clean URLs that map to specific internal file paths.

### Example: Clean URLs for PHP Files
Redirects requests for `/about` to `/about.php` without requiring the `.php` extension in the URL.
```apache
RewriteEngine On
RewriteRule ^about$ about.php [L]
```

### Example: Dynamic Parameter-Based Routing
Redirects a URL with a dynamic parameter, such as `/user/123`, to `/user.php?id=123`.
```apache
RewriteEngine On
RewriteRule ^user/([0-9]+)$ user.php?id=$1 [L]
```

### Example: Multi-Parameter Routing
Route multiple parameters by mapping URLs like `/product/123/blue` to `/product.php?id=123&color=blue`.
```apache
RewriteEngine On
RewriteRule ^product/([0-9]+)/([a-zA-Z]+)$ product.php?id=$1&color=$2 [L]
```

---

This `.htaccess` file guide includes basic examples and configurations to help control access, redirect URLs, improve site performance, and implement virtual routing on Apache servers.
