# Utiliser l'image officielle de Nginx basée sur Alpine comme image de base
FROM nginx:alpine

# Copier la page web personnalisée dans le répertoire par défaut de Nginx
COPY index.html /usr/share/nginx/html/index.html

# Exposer le port 80 pour le serveur web
EXPOSE 80
