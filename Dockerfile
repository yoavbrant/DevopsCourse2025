FROM python:3.8.2-slim
ENV FLASK_APP=flaskr \
    FLASK_ENV=development
WORKDIR /app
COPY . /app
RUN pip install --upgrade pip \
    && pip install --editable .
RUN flask init-db
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
    
