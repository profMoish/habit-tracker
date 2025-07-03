# Используем минимальный образ Python 3.12
FROM python:3.12-slim 

# Не засорять рабочую директорию файлами __pycache__ (байткод) так как они не нужны в контейнере
ENV PYTHONDONTWRITEBYTECODE 1
# Без буферизации и не будет задержки при выводе
ENV PYTHONUNBUFFERED 1

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл с зависимостями
COPY requirements.txt .
# Устанавливаем зависимости
RUN pip install --upgrade pip && pip install -r requirements.txt

# Копируем остальные файлы проекта
COPY . .

# Запускаем приложение
# В разработке использовать runserver.
# В продакшене gunicorn — стабильный HTTP-сервер.
# CMD ["gunicorn", "habit_tracker.wsgi:application", "--bind", "0.0.0.0:8000"]
CMD ["python", "bot.py"]