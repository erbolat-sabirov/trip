PROJECT_NAME := laravel-app
COMPOSE := docker-compose -f docker-compose.yml

start:
	$(COMPOSE) up -d

stop:
	$(COMPOSE) down

restart:
	$(COMPOSE) restart

build:
	$(COMPOSE) build

php-bash:
	$(COMPOSE) exec php bash

mysql-bash:
	$(COMPOSE) exec mysql bash

node-bash:
	$(COMPOSE) exec node sh

npm-install:
	$(COMPOSE) exec node npm install

node-serve:
	$(COMPOSE) exec node npm run dev

key-generate:
	$(COMPOSE) exec php php artisan key:generate

migrate:
	$(COMPOSE) exec php php artisan migrate

composer-install:
	$(COMPOSE) exec php composer install

test:
	$(COMPOSE) exec php php artisan test
