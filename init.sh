sudo unlink /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
#sudo ln -sf /home/box/web/hello.py /etc/gunicorn.d/hello.py
#sudo /etc/init.d/gunicorn restart
gunicorn -b 0.0.0.0:8080 hello:app_me&
#sudo /etc/init.d/mysql start
