FROM nginx:alpine

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier HTML
COPY index.html /usr/share/nginx/html/index.html

# Copier le script de test dans /app
COPY run-tests.sh /app/run-tests.sh

# Rendre le script exécutable
RUN chmod +x /app/run-tests.sh

# Exposer le port 80
EXPOSE 80

# Lancer nginx
CMD ["nginx", "-g", "daemon off;"]
