# Utilisez une image Alpine de base
FROM alpine:latest

# Installation de PHP et des extensions PHP nécessaires
RUN apk update && apk upgrade


# Exposez le port utilisé par PHP-FPM (par défaut : 9000)
EXPOSE 9000

# Commande par défaut exécutée au démarrage du conteneur
CMD ["php-fpm7", "-F"]
