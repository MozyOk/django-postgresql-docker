.PHONY: init
init:
	docker-compose build

.PHONY: run
run:
	docker-compose up -d --build

.PHONY: shell
shell:
	docker-compose run --rm web python manage.py shell

