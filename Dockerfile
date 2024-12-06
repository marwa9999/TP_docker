# Utiliser une image officielle PHP avec Apache
FROM php:8.1-apache

# Installer les extensions PHP nécessaires
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Activer le module Apache mod_rewrite
RUN a2enmod rewrite

# Copier le code source dans le dossier web d'Apache
COPY src/ /var/www/html/

# Définir les permissions appropriées
RUN chown -R www-data:www-data /var/www/html

# Exposer le port 80 pour l'application
EXPOSE 80
