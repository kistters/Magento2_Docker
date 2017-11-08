#!/bin/sh
echo "Initializing setup..."

cd /src/www

echo "composer install"
file="/src/www/composer.json"
if [ -f "$file" ]
then
    composer update --prefer-dist
else
    composer create-project --prefer-dist --repository-url=https://repo.magento.com/ magento/project-community-edition /src/www 2.2 
fi

    chown -R :www-data .
    chmod u+x ./bin/magento

    echo "setup"
    php -d memory_limit=2G ./bin/magento setup:install \
        --db-host=$MAGE_SETUP_DB_HOST \
        --db-name=$MAGE_SETUP_DB_NAME \
        --db-user=$MAGE_SETUP_DB_USER \
        --db-password=$MAGE_SETUP_DB_PASSWORD \
        --base-url=$MAGE_SETUP_BASE_URL \
        --backend-frontname=$MAGE_SETUP_ADMIN_BACKEND_FRONTNAME \
        --admin-firstname=$MAGE_SETUP_ADMIN_FIRSTNAME \
        --admin-lastname=$MAGE_SETUP_ADMIN_LASTNAME \
        --admin-email=$MAGE_SETUP_ADMIN_EMAIL \
        --admin-user=$MAGE_SETUP_ADMIN_USER \
        --admin-password=$MAGE_SETUP_ADMIN_PASSWORD

    find var vendor pub/static pub/media app/etc -type f -exec chmod g+w {} \;
    find var vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} \;

    ls -la .


echo "Setup finished..."