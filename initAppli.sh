#!/bin/bash

echo "XDEBUG"
docker-compose exec  --user jsinsert container_jsinsert bash -c 'export XDEBUG_CONFIG="remote_host=192.168.0.15 idekey=PHPSTORM"'
docker-compose exec  --user jsinsert container_jsinsert bash -c 'export PHP_IDE_CONFIG="serverName=192.168.0.26"'

echo "SUPRESSION VENDOR CACHE COMPOSER.LOCK"
docker-compose exec --user jsinsert container_jsinsert bash -c 'php -v'
docker-compose exec --user jsinsert container_jsinsert bash -c 'rm -rf /var/www/html/jsinsert/composer.lock'
docker-compose exec --user jsinsert container_jsinsert bash -c 'rm -rf /var/www/html/jsinsert/vendor'
docker-compose exec --user jsinsert container_jsinsert bash -c 'rm -rf /var/www/html/jsinsert/var/cache'
docker-compose exec --user jsinsert container_jsinsert bash -c 'rm -rf /var/www/html/jsinsert/var/logs'
docker-compose exec --user jsinsert container_jsinsert bash -c 'rm -rf /var/www/html/jsinsert/var/sessions'

echo "COMPOSER INSTALL"
docker-compose exec  --user jsinsert container_jsinsert bash -c '/usr/local/bin/composer install'

#echo "DOCTRINE : CREATE DB"
#docker-compose exec  --user jsinsert container_jsinsert bash -c 'php /var/www/html/jsinsert/bin/console doctrine:database:create'
#echo "DOCTRINE : CREATE SCHEMA"
#docker-compose exec  --user jsinsert container_jsinsert bash -c 'php /var/www/html/jsinsert/bin/console doctrine:schema:update --dump-sql'
#docker-compose exec  --user jsinsert container_jsinsert bash -c 'php /var/www/html/jsinsert/bin/console doctrine:schema:update --force'


exit 0
