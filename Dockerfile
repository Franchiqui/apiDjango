FROM python:3-alpine

ENV PYTHONUNBUFFERED=1
WORKDIR /app

# Actualizar los paquetes e instalar las dependencias necesarias
RUN apk update && apk add --no-cache gcc musl-dev postgresql-dev python3-dev libffi-dev

# Actualizar pip e instalar las dependencias del archivo requirements.txt
COPY ./requirements.txt ./
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copiar el resto de los archivos al contenedor
COPY ./ ./

# Definir el comando de entrada del contenedor
CMD ["sh", "entrypoint.sh"]