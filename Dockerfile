FROM store-db
LABEL maintainer="svyatoslav912@gmail.com"
EXPOSE 8000

# Base directory
#WORKDIR /root/
#RUN mkdir online-store && cd online-store
#COPY . ./

# Pip
RUN apt update 
RUN apt install python3.6 
RUN apt install python3-pip 
RUN pip3 install -r requirements.txt

# Run
#RUN cd src/camerastore && python3.6 manage.py migrate
#CMD python3.6 manage.py runserver 0.0.0.0:8000
