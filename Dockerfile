# Utiliser une version spécifique de PrestaShop
FROM prestashop/prestashop:latest

# Mettre à jour le système et installer des dépendances supplémentaires
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Changer le shell de l'utilisateur www-data
RUN usermod -s /bin/bash www-data

# Changer les permissions du répertoire web
RUN chown -R www-data:www-data /var/www/html

# Passer à l'utilisateur www-data
USER www-data