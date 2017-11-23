FROM centos:latest

ENV server postgresql
ENV user username
ENV password password
ENV dbname wineDb

USER root

ADD loader.py /app/loader.py

RUN yum install pip

RUN pip install -r requirements.txt

CMD ["python", "/app/loader.py"]