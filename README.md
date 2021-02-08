# API сервис YamDB
![Build Status](https://github.com/IcGrem/yamdb_final/workflows/yamdb-final-workflow/badge.svg)
## 
Проект YaMDb собирает отзывы (Review) пользователей на произведения (Title). Произведения делятся на категории: «Книги», «Фильмы», «Музыка». Список категорий (Category) может быть расширен (например, можно добавить категорию «Изобразительное искусство» или «Ювелирка»).
При разработке приложения использованы фреймфорки ```django и django-rest-framework```. В качестве базы выступает ```postgresql```
Запуск проекта осуществляется средствами ```docker```

## Установка

### 1. Установка docker и docker-compose
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
### 2. Запуск контейнера
```bash
docker-compose up --build -d
```
### 3. Миграции 
Для входа в контейнер выполните команду:
```bash
docker-compose exec web bash
```
Выполните миграции 
```bash
python manage.py makemigrations
python manage.py migrate
```
### 4. Инициализации стартовых данных:
```bash
python manage.py loaddata fixtures.json
```
### 5. Создание суперпользователя:
```bash
python manage.py createsuperuser
```
### 5. Выйти из контейнера:
```bash
exit
```
### 6. Остановить контейнер:
```bash
docker-compose down
```
Документация для использования API 127.0.0.1:8000/redoc
