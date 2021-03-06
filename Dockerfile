FROM python:3.6
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY ./package.json /usr/src/app/package.json
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install nodejs -y
COPY requirements/ /usr/src/app/requirements/
RUN pip install -r requirements/common.txt  -r requirements/jenkins.txt
COPY . /usr/src/app

RUN npm install