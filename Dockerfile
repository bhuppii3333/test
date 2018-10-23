From python:3-alpine
WORKDIR /src
COPY /docker/python-app/index.py /src
#RUN apt-get install software-properties-common && add-apt-repository universe
#RUN apt install python3-pip

RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD python /docker/python-app/index.py
