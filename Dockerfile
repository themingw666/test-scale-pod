FROM httpd:latest

EXPOSE 80

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY index.html /index.html

ENTRYPOINT ["/entrypoint.sh"]