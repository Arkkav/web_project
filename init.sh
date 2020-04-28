sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default

#sudo ln -sf /home/arkkav/projects/web_project/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo nginx -s reload
#sudo /etc/init.d/nginx restart
