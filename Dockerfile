FROM php:8.1

WORKDIR /App

COPY . /App

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN composer update

EXPOSE 8000

ENTRYPOINT ["./script"]
