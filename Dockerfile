FROM python:3.8-alpine
COPY . .

RUN pip install numpy
RUN pip install -r requirements.txt


COPY . .
#RUN python manage.py migrate
#RUN pip install django
#COPY . /app
CMD ["python","image_retrieval.py","0.0.0.0:6001"]
#EXPOSE 6001
