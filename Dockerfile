FROM httpd:latest

EXPOSE 80

COPY health.json /usr/local/apache2/htdocs/

COPY health.conf /usr/local/apache2/conf/extra/httpd-health.conf

RUN echo "Include conf/extra/httpd-health.conf" >> /usr/local/apache2/conf/httpd.conf

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY index.html /index.html

ENTRYPOINT ["/entrypoint.sh"]