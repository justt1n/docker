#!/bin/sh

SETUP_DIR=${PWD}

if [ ! -f ".env" ]; then
	echo "Copy file .env.example to .env";
    cp .env.example .env;
    vi .env;
fi;


echo "Change mod write 777 for folder and sub of bootstrap and storage folder.";
sudo chmod -R 777 bootstrap/cache storage;

echo "Run composer install.";
composer install;

echo "Create App key.";
php artisan key:generate --ansi;
