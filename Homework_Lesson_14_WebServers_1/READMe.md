## Homework_Lesson 14 - WebServers 1

### Install nginx:
sudo apt update; 
sudo apt install nginx

![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_14_WebServers_1/images/nginx_ver.png)

### Profile list check:
sudo ufw app list

![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_14_WebServers_1/images/ufw_list.png)

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

![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_14_WebServers_1/images/config_tms.png)

### Enable file and create link on catalog:
sudo ln -s /etc/nginx/sites-available/tms.by /etc/nginx/sites-enabled/

### Rule out a cache problem:
sudo nano /etc/nginx/nginx.conf - 
Editing: option "server_names_hash_bucket_size 64"

![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_14_WebServers_1/images/nginx_config.png)

### Test on syntax error:
sudo nginx -t

### Restart Nginx:
sudo systemctl restart nginx

![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_14_WebServers_1/images/nginx_default.png)

![Result](https://github.com/railsroger/Maksim_Aleksandrovich_DOS24/blob/main/Homework_Lesson_14_WebServers_1/images/tms_result.png)


