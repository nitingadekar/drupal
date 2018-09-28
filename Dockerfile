FROM 207448669309.dkr.ecr.ap-south-1.amazonaws.com/drupal-acc:latest 

RUN rm -rf /var/www/html/* && rm -rf /var/www/html/.git && rm -rf /var/www/html/.htaccess

RUN git init && git pull git@github.com:nitingadekar/html.git

RUN chown www-data:www-data /var/www/html
RUN chown www-data:www-data /var/www/html/modules/ -R && 	chown www-data:www-data /var/www/html/sites/ -R && 	chown www-data:www-data /var/www/html/themes/ -R



