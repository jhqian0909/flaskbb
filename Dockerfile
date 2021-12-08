FROM python:3.9.1

VOLUME /tmp
COPY . .

WORKDIR .

RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip3 install -i https://mirrors.aliyun.com/pypi/simple/ -r requirements.txt
RUN apt-get update && apt-get install -y vim

EXPOSE 8080

ENTRYPOINT ["flaskbb","--config","flaskbb.cfg" ,"run"]

