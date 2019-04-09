FROM store-base
LABEL maintainer="svyatoslav912@gmail.com"
ENV HOME=/root
EXPOSE 8000

# Base directory
WORKDIR /root/
RUN mkdir online-store
WORKDIR /root/online-store
COPY src ./
COPY requirements.txt ./

# Pip
RUN pip3 install -r requirements.txt

# Run
WORKDIR /root/online-store/camerastore 
RUN scripts/load-db.sh
CMD scripts/run-in-docker.sh
