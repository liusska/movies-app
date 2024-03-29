FROM python:3.9.6-alpine

# set work directory
WORKDIR 'C:/Users/Lenovo NZT/PycharmProjects/movie_app'

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install psycopg2 dependencies
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# copy entrypoint.sh
COPY ./entrypoint.sh .
#RUN sed -i 's/\r$//g' 'C:/Users/Lenovo NZT/PycharmProjects/movie_app/entrypoint.sh'
#RUN icacls +x 'C:/Users/Lenovo NZT/PycharmProjects/movie_app/entrypoint.sh'

# copy project
COPY . .

#ENTRYPOINT ["C:/Users/Lenovo NZT/PycharmProjects/movie_app/entrypoint.sh"]