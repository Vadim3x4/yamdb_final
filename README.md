# API сервис YamDB
![Build Status](https://github.com/Vadim3x4/yamdb_final/workflows/Yamdb-app%20workflow/badge.svg)

#### Проверить API можно по адресу - http://84.201.176.219/api/v1/
#### Документация API доступна по адресу http://84.201.176.219/redoc
Проект YaMDb собирает отзывы (Review) пользователей на произведения (Title). Произведения делятся на категории: «Книги», «Фильмы», «Музыка». Список категорий (Category) может быть расширен (например, можно добавить категорию «Изобразительное искусство» или «Ювелирка»).
При разработке приложения использованы фреймфорки ```django и django-rest-framework```. В качестве базы выступает ```postgresql```
Запуск проекта осуществляется средствами ```docker```

## Быстрая установка используя make.
```bash
make                    - Показать доступные команды
make docker		- Запуск скрипта для установки docker и docker-compose
make run		- Запуск контейнеров 
make migrate		- Выполнить миграции 
make fixtures		- Загрузить дамп fixtures.json в БД 
make superuser		- Создать суперпользователя 
make web		- Консоль web контейнера.
make postgresql		- Консоль Posgresql контейнера.
make nginx		- Консоль nginx контейнера.
make stop		- Выключение контейнера.

```
## Ручная установка.

### 1. Установка docker и docker-compose:
Для запуска проекта требуется установка Docker и Docker-compose
(https://docs.docker.com/engine/install/).

### 2. По данному шаблону создайте файл .env в основной директории:
```bash
DB_NAME=
POSTGRES_USER=
POSTGRES_PASSWORD=
DB_HOST=
DB_PORT=
```
### 3. Запуск контейнера:
```bash
docker-compose up --build -d
```
### 4. Миграции:
Для входа в контейнер выполните команду:
```bash
docker-compose exec web bash
```
Выполните миграции 
```bash
python manage.py makemigrations
python manage.py migrate
```
### 5. Запуск автотестов:
```bash
pytest
```
### 6. Инициализации стартовых данных:
```bash
python manage.py loaddata fixtures.json
```
### 7. Создание суперпользователя:
```bash
python manage.py createsuperuser
```
### 8. Выйти из контейнера:
```bash
exit
```
### 9. Остановить контейнер:
```bash
docker-compose down
```
Документация для использования API 127.0.0.1:8000/redoc
### Используемые технологии: Python 3.8.5, Django, Django REST, PostgreSQL, Docker.
### Авторы

[Вадим Кокшаров](https://github.com/Vadim3x4)  - написал часть, касающуюся управления пользователями (Auth и Users): систему регистрации и аутентификации, права доступа, работу с токеном, систему подтверждения e-mail, поля.

[Ирина Назарова](https://github.com/Irina-Nazarova)  - написала категории (Categories), жанры (Genres) и произведения (Titles): модели, view и эндпойнты для них.

[Елизавета Безякина](https://github.com/bezyakina)  - написаны отзывы (Review) и комментарии (Comments): описывала модели и view, настраивала эндпойнты, определяла права доступа для запросов. Рейтинги произведений.
