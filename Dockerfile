FROM ubuntu
RUN apt-get update && apt-get -y install apache2
RUN apt-get -y install python3-pip && apt-get -y install python3
COPY test.py ./
RUN chmod +x ./test.py
CMD [ "python", "./test.py"]
EXPOSE 8080 80