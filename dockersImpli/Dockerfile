FROM python:3.10
EXPOSE 5000
WORKDIR /app
RUN pip install flask
COPY . /app
CMD ["flask","run","--host","0.0.0.0"]




## Use official Python image
#FROM python:3.11-slim
## Set working directory
#WORKDIR /app
## Copy your app into the container
#COPY . .
## Install dependencies
#RUN pip install flask
## Set environment variables
#ENV FLASK_APP=firstapp.py
#ENV FLASK_RUN_HOST=0.0.0.0
## Expose the port Flask will run on
#EXPOSE 5000
## Run Flask
#CMD ["flask", "run"]