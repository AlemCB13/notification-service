FROM ruby:latest

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos necesarios
COPY notification-service/Gemfile notification-service/Gemfile.lock ./

# Instalar dependencias
RUN bundle install

# Copiar el código de la aplicación
COPY notification-service /app

# Exponer el puerto en el que corre Sinatra (por defecto 4567)
EXPOSE 4567

# Comando para ejecutar el servicio
CMD ["ruby", "notification_service.rb"]
