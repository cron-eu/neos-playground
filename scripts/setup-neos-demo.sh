#!/usr/bin/env bash

# install composer in /tmp
( cd /tmp && curl -sS https://getcomposer.org/installer | php )
composer="/tmp/composer.phar"

cd /app || exit 1
#$composer create-project neos/neos-base-distribution .
$composer install

# setup neos demo site
./flow setup:database --driver pdo_mysql --host mysql --dbname neos --user dev --password dev
./flow doctrine:migrate
./flow setup:imagehandler --driver Imagick
./flow user:create --roles Administrator username password firstname lastname
$composer require neos/demo && ./flow flow:package:rescan
./flow site:import Neos.Demo

# done
echo "Neos Demosite ready to go, go to http://localhost:8000/"
