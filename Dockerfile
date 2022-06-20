FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2 && apt-get clean
RUN apt install apache2
RUN apt install net-tools
WORKDIR /var/www/html
COPY index.html /var/www/html/
EXPOSE 80
RUN echo "SERVERNAME 127.0.0.1" >> /etc/apache2/apache2.conf
#ENTRYPOINT service apache2 start