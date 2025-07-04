# Habit Tracker 🧠✅

Приложение для отслеживания полезных привычек с Telegram-ботом и веб-интерфейсом.

## 📦 Возможности

* Отслеживание привычек через Telegram
* Веб-интерфейс на Django
* Docker-окружение
* PostgreSQL база данных

## 🚀 Быстрый старт

### 1. Клонируй проект

```bash
git clone https://github.com/profMoish/habit-tracker.git
cd habit-tracker
```

### 2. Запуск в Docker

```bash
docker-compose up --build
```

### 3. Миграции и суперпользователь

```bash
docker-compose run web python manage.py migrate
docker-compose run web python manage.py createsuperuser
```

### ⚙️ Переменные окружения (.env)

Пример .env:
```
SECRET_KEY=your_secret_key
DEBUG=True
ALLOWED_HOSTS=127.0.0.1,localhost
DATABASE_URL=postgresql://user:password@host:port/dbname
TELEGRAM_BOT_TOKEN=your_telegram_token
```

### 🧪 Тестирование

```bash
pytest
```

###  🐳 Сервисы

1. web — Django-приложение
2. bot — Telegram-бот
3. db — PostgreSQL (локально через docker-compose)


### 🛠 TODO

* Понять как работают два сервиса
* CI/CD
* Тесты для views
* Документация API


