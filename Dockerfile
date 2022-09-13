FROM 080609930597.dkr.ecr.ap-south-1.amazonaws.com/brahma:v2

# Working/Code Directory
WORKDIR /var/www/html

#copy nginx file
# COPY ./conf/nginx/host.conf /etc/nginx/sites-enabled/default

# Code copy
COPY . .

#RUN sh setup.sh

# Port expose
EXPOSE 9000 80

# Let supervisord start nginx & php-fpm
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
