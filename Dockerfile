FROM ubuntu
MAINTAINER Harald Dahle "harad@ifi.uio.no"

ADD . /code
WORKDIR /code
RUN apt-get update && apt-get install -y python3 && apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
CMD ["python3", "run.py"]
