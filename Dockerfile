FROM nextcloud:19-fpm

MAINTAINER Rene Kanzler, me at renekanzler dot com

RUN apt-get update \
	\
# install PHP Module smbclient
	&& apt-get install -y smbclient libsmbclient-dev \
	&& pecl install smbclient \
	&& docker-php-ext-enable smbclient \
	\
# cleanup
	&& rm -rf /var/lib/apt/lists/*
