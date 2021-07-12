# pull official base image
FROM node:13.12.0-slim AS build
RUN apt-get update || : && apt-get install python -y && apt-get install build-essential -y

ENV IS_DOCKER=true
ENV XVFB_DISPLAY=:99
ENV XVFB_ARGS="-screen 0 1280x1024x16 -dpi 72 -ac +extension RANDR"
ENV DISPLAY=${XVFB_DISPLAY}
RUN mkdir -p /usr/share/man/man1 && \
  apt-get update; apt-get -y install openjdk-8-jre-headless xvfb wget

ENV CHROME_VERSION=91.0.4472.124
RUN wget --no-verbose https://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_${CHROME_VERSION}_amd64.deb && \
  dpkg -i google-chrome-stable_${CHROME_VERSION}_amd64.deb; apt-get -fy install

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY . /app

FROM build AS test  

RUN npm install

CMD npx wdio

