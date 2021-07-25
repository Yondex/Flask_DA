FROM python:3.9.0

RUN mkdir -p /home/app
WORKDIR /home/app

COPY  . /home/app
RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 8080
ENTRYPOINT [ "python3", "root.py"]

#CMD ['runserver', '0.0.0.0:8080']