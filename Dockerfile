# pull official base image
FROM node:13.12.0-slim AS build
RUN apt-get update || : && apt-get install python -y && apt-get install build-essential -y

ENV IS_DOCKER=true
ENV XVFB_DISPLAY=:99
ENV XVFB_ARGS="-screen 0 1280x1024x16 -dpi 72 -ac +extension RANDR"
ENV DISPLAY=${XVFB_DISPLAY}
RUN mkdir -p /usr/share/man/man1 && \
  apt-get update; apt-get -y install openjdk-8-jre-headless xvfb wget

RUN apt-get install -y x11vnc
RUN apt-get install -y xvfb
RUN apt-get install -y fluxbox
RUN apt-get install -y wget
RUN apt-get install -y wmctrl

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list

RUN apt-get update && apt-get -y install google-chrome-stable

# ENV CHROME_VERSION=91.0.4472.114-1
# RUN wget --no-verbose https://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_91.0.4472.114-1_amd64.deb && \
#   dpkg -i google-chrome-stable_91.0.4472.114-1_amd64.deb; apt-get -fy install

# COPY bootstrap.sh /

# CMD '/bootstrap.sh'

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY . /app

FROM build AS test  

RUN npm install
