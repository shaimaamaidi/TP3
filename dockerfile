FROM nginx:alpine

# Copy your application files
COPY index.html /usr/share/nginx/html/index.html

# Copy and set up the test script
COPY runtests.sh /runtests.sh
RUN chmod +x /runtests.sh

EXPOSE 80

# Custom entrypoint to run both nginx and tests
CMD ["sh", "-c", "nginx -g 'daemon off;' & /runtests.sh"]