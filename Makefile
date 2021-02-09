

all:
	@echo "make docker		- Скрипт для установки docker и docker-compose"
	@echo "make run		- Запуск контейнеров "
	@echo "make migrate		- Выполнить миграции "
	@echo "make fixtures		- Загрузить дамп fixtures.json в БД "
	@echo "make superuser		- Создать суперпользователя "
	@echo "make web		- Консоль web контейнера."
	@echo "make postgresql		- Консоль Posgresql контейнера."
	@echo "make nginx		- Консоль nginx контейнера."
	@echo "make stop		- Выключение контейнера."
	


install docker :
	curl -fsSL https://get.docker.com -o get-docker.sh
	sh get-docker.sh

run:
	docker-compose up --build -d 

web:
	docker-compose exec web bash

postgresql:
	docker-compose exec db bash

nginx:
	docker-compose exec nginx bash

stop:
	docker-compose down

migrate:
		docker-compose run web python manage.py makemigrations
		docker-compose run web python manage.py migrate

fixture:
	docker-compose run web python manage.py loaddata fixtures.json
	
superuser:
	docker-compose run web python manage.py createsuperuser

