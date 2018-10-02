FROM python:2.7-alpine

ENV LIBRARY_PATH=/lib:/usr/lib

RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
    git zlib-dev jpeg-dev gcc musl-dev postgresql-dev py2-anyjson ruby-bundler py2-pip libjpeg curl && \
    curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

WORKDIR /stream

ADD . /stream

RUN poetry install && \
    bundler install

EXPOSE 8000

CMD ["poetry", "run", "python", "manage.py", "runserver", "0.0.0.0:8000"]
