FROM nginx:stable

MAINTAINER Zou Yapeng <zyp19901009@gmail.com>

RUN apt-get update -y \
	&& apt-get install -y php5-fpm \
	&& sed -i '/^listen.group =/s/.*/listen.group = nginx/g' /etc/php5/fpm/pool.d/www.conf \
	&& sed -i '/^listen.owner =/s/.*/listen.owner = nginx/g' /etc/php5/fpm/pool.d/www.conf \
	&& sed -i 's/;listen.mode = 0660/listen.mode = 0660/g' /etc/php5/fpm/pool.d/www.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
