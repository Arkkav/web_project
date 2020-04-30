#sudo ln -sf /home/arkkav/projects/web_project/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default

#sudo nginx -s reload
sudo /etc/init.d/nginx restart

#gunicorn --config /home/arkkav/projects/web_project/etc/hello.py --reload --chdir /home/arkkav/projects/web_project hello:app
gunicorn --config /home/box/web/etc/hello.py --reload --chdir /home/box/web hello:app
