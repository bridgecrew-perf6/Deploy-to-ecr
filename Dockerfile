FROM ubuntu
RUN apt-get update && apt-get -y install apache2
RUN apt-get -y install python3-pip && apt-get -y install python3
RUN pip install requests
COPY test.py ./
RUN chmod +x ./test.py
ENTRYPOINT ["python3"]
CMD ["./test.py"]
EXPOSE 8080 80
