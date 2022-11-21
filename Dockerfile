FROM python:3.8-alpine
RUN pip install requirements.txt


COPY . .
#RUN python manage.py migrate
#RUN pip install django
#COPY . /app
CMD ["python","image_retrieval.py","0.0.0.0:6001"]
#EXPOSE 4001
