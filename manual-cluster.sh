#!/bin/sh
docker run --name web_1 -v /vagrant/svr_1_html:/usr/share/nginx/html:ro -p 8081:80 -d nginx
docker run --name web_2 -v /vagrant/svr_2_html:/usr/share/nginx/html:ro -p 8082:80 -d nginx
docker run --name proxy -p 8888:80 --link web_1:web_1 --link web_2:web_2 -d tutum/haproxy
