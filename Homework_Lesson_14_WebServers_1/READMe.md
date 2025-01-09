## Homework_Lesson 14 - WebServers 1

### Install nginx:
sudo apt update
sudo apt install nginx
![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_14_WebServers_1/images/nginx_ver.png)


### Profile list check:
sudo ufw app list

### Include only the strict profile HTTP:
sudo ufw allow 'Nginx HTTP'

### Сhecking status:
sudo ufw status

### Сreate domain:
sudo mkdir -p /var/www/tms.by/html

### Set the directory owner:
sudo chown -R $USER:$USER /var/www/tms.by/html

### Reading and group assignment:
sudo chmod -R 755 /var/www/tms.by

### Create index html page:
sudo nano /var/www/tms.by/html/index.html

### Create file for settings:
sudo nano /etc/nginx/sites-available/tms.by

server {
        listen 80;
        listen [::]:80;

        root /var/www/tms.by/html;
        index index.html index.htm index.nginx-debian.html;

        server_name tms.by www.tms.by;

        location / {
                try_files $uri $uri/ =404;
        }
}

### Enable file and create link on catalog:
sudo ln -s /etc/nginx/sites-available/tms.by /etc/nginx/sites-enabled/

### Rule out a cache problem:
sudo nano /etc/nginx/nginx.conf

Editing: option "server_names_hash_bucket_size 64"

### Test on syntax error:
sudo nginx -t

### Restart Nginx:
sudo systemctl restart nginx
