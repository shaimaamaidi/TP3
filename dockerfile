FROM nginx:alpine

# Répertoire de travail
WORKDIR /app

# Copier le fichier HTML dans le dossier de Nginx
COPY index.html /usr/share/nginx/html/index.html

# Copier le script de test
COPY run-tests.sh /runtests.sh
RUN chmod +x /runtests.sh

# Exposer le port 80
EXPOSE 80

# Lancer Nginx et exécuter les tests
CMD sh -c "nginx -g 'daemon off;' & /runtests.sh"
