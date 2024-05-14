FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN  RUN apk update && apk add --no-cache gcc musl-dev postgresql-dev python3-dev libffi-dev && pip install --upgrade pip


COPY ./requirements.txt ./

RUN pip install -r requirements.txt

COPY ./ ./

CMD ["sh", "entrypoint.sh"]