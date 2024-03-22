# Базовый образ с Node.js
FROM node:latest

# Установка nginx
RUN apt-get update && apt-get install -y nginx

# Копирование приложения Node.js в контейнер
COPY . /app2
WORKDIR /app2

# Установка зависимостей для приложения Node.js
RUN npm install

# Копирование конфигурационного файла nginx в контейнер
COPY nginx.conf /etc/nginx/nginx.conf

# Экспозиция порта 80 для nginx
EXPOSE 8080

# Запуск приложения Node.js и nginx
CMD ["node", "app.js", "nginx", "-g", "daemon off;"]
