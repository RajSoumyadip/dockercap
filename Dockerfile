FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
ADD . /DOCKER-CAP2/p1.py
ADD . /DOCKER-CAP2
WORKDIR /DOCKER-CAP2
RUN pip install Flask==1.0.2
CMD ["python", "p1.py"]