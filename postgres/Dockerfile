# Utilisez une image Alpine de base
FROM alpine:latest

# Installation de PostgreSQL
RUN apk update && apk add --no-cache postgresql postgresql-contrib

# Configuration des variables d'environnement pour PostgreSQL
ENV PGDATA=/var/lib/postgresql/data
ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=admin
ENV POSTGRES_DB=mydatabase

# Création du répertoire de données pour PostgreSQL
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA"
RUN mkdir -p /run/postgresql && chown -R postgres:postgres /run/postgresql
VOLUME /var/lib/postgresql/data

# Exposez le port par défaut utilisé par PostgreSQL
EXPOSE 5432

# Définir les variables d'environnement pour la localisation
ENV LANG en_US.utf8
ENV LC_ALL en_US.utf8

# Exécutez les commandes supplémentaires pour personnaliser l'image
RUN apk update \
    && apk add --no-cache curl \
    && rm -rf /var/cache/apk/*

# Définissez l'utilisateur par défaut comme "postgres"
USER postgres


# Commande par défaut exécutée au démarrage du conteneur
CMD ["postgres"]
