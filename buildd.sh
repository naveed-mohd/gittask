#!/bin/bash
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
sudo apt install nginx 
git clone https://github.com/AJS23/lms-public.git
ls
echo -e "showing \vthe \vlist \vof \vavailable \vfiles \vand \vdirectories"
cd lms-public
echo -e "switched \vto \vother \vdirectory"
cd webapp
npm i
npm run build 
cd dist
sudo cp -r * /var/www/html 
