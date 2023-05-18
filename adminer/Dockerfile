# Utilisez une image Alpine de base
FROM alpine:latest

# Installation des dépendances d'Adminder
RUN apk update && apk add --no-cache curl php7 php7-session php7-json php7-pdo php7-pdo_pgsql php7-pgsql

# Configuration des variables d'environnement pour Adminder
ENV ADMINDER_DB_HOST=postgres
ENV ADMINDER_DB_PORT=5432
ENV ADMINDER_DB_NAME=mydatabase
ENV ADMINDER_DB_USER=admin
ENV ADMINDER_DB_PASSWORD=admin
ENV ADMINDER_SESSION_SECRET=mysecret

# Définir le répertoire de travail
WORKDIR /app

# Téléchargement et installation d'Adminder
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && git clone https://github.com/Adminder/Adminder.git /app \
    && composer install --no-dev

# Exposez le port 8080 utilisé par Adminder
EXPOSE 8080

# Commande par défaut exécutée au démarrage du conteneur
CMD ["php", "-S", "0.0.0.0:8080", "-t", "public"]
