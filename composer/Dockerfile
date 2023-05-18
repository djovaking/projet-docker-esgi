# Utilisez une image Alpine de base
FROM alpine:latest

# Installation des dépendances nécessaires
RUN apk --no-cache add curl php7 php7-json

# Téléchargement et installation de Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Définir le répertoire de travail
WORKDIR /app

# Commande par défaut exécutée au démarrage du conteneur
CMD ["composer"]
