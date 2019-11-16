FROM python:3.6.8

RUN mkdir -p /usr/src/app

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN pip3 install -r requirements.txt

EXPOSE 8009

RUN chmod +x ./devops/scripts/run_web.sh

CMD ./devops/scripts/run_web.sh
