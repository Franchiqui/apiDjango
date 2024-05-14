FROM python:3-alpine

ENV PYTHONUNBUFFERED=1
WORKDIR /app

RUN pip install Django==4.0.4
RUN pip install gunicorn==20.1.0
RUN pip install psycopg2-binary
RUN pip install python-dotenv==0.21.0
RUN pip install whitenoise==6.2.0


# Copiar el resto de los archivos al contenedor
COPY ./ ./

# Definir el comando de entrada del contenedor
CMD ["sh", "entrypoint.sh"]