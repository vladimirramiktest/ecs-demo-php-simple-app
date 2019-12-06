FROM webdevops/php-apache

# Install dependencies

# Install app
ADD src /application/code

# Configure apache
RUN chown -R apache:apache /application/code
ENV APACHE_RUN_USER apache
ENV APACHE_RUN_GROUP apache
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D",  "FOREGROUND"]
