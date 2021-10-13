FROM python:3.10.0-slim-buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git -y curl ffmpeg python3-pip
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g npm@latest
COPY . /app/
WORKDIR /app/
RUN python3 -m pip install -U pip
RUN python3 -m pip install -U -r requirements.txt
CMD python3 -m Music
