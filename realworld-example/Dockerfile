FROM php:7.2.5-fpm

RUN docker-php-ext-install pdo_mysql

COPY ./ /app


WORKDIR /app

RUN php artisan key:generate
RUN php artisan jwt:secret

EXPOSE 8000

ENTRYPOINT ["php", "artisan", "serve", "--host=0.0.0.0"]
