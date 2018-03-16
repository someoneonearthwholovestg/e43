FROM  debian:latest

WORKDIR /app
ADD . /app

RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y git curl python python-pip python3 python3-pip lame ffmpeg libchromaprint-dev libchromaprint-tools libchromaprint1 wget
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs
RUN pip2 install -r requirements2.txt
RUN pip3 install -r requirements3.txt
RUN npm install git://github.com/AllToMP3/alltomp3#3ab42d2
RUN npm -g install acoustid
CMD ["python2", "main.py"]