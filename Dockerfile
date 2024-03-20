# Базовый образ с Node.js
FROM node:12

# Установка nginx
RUN apt-get update && apt-get install -y nginx

# Копирование приложения Node.js в контейнер
COPY . /app
WORKDIR /app

# Установка зависимостей для приложения Node.js
RUN npm install

# Копирование конфигурационного файла nginx в контейнер
COPY . .
#nginx.conf /etc/nginx/nginx.conf

# Экспозиция порта 8080 для nginx
EXPOSE 8080

# Запуск приложения Node.js и nginx
CMD ["node", "index.js"]
