.PHONY: init
init:
	docker-compose build

.PHONY: create-admin
create-admin:
	docker-compose run --rm web python manage.py createsuperuser

.PHONY: make-migrations
make-migrations:
	docker-compose run --rm web python manage.py makemigrations

.PHONY: migrate
migrate:
	docker-compose run --rm web python manage.py migrate

.PHONY: run
run:
	docker-compose up -d --build

.PHONY: shell
shell:
	docker-compose run --rm web python manage.py shell

