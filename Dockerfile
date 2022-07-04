FROM ubuntu:18.04
RUN apt-get update 
RUN apt install apache2 -y
ADD index.html /var/www/html/
ADD vertical-logo-monochromatic.webp /var/www/html/
EXPOSE 80 
CMD ["apache2ctl", "-D", "FOREGROUND"]
