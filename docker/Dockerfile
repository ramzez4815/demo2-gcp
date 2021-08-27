FROM ubuntu:16.04
RUN apt-get update \
    && apt-get install -y mysql-client \
        telnet \
        net-tools \
        curl \
        iputils-ping \
        netcat \
        redis-tools \
        default-jre 

RUN apt-get install -y python3-pip

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && apt-get update -y && apt-get install google-cloud-sdk -y

COPY gke.json /root/service_key.json
COPY backup-script.sh /root/backup-script.sh

RUN gcloud config set project epam-001 && \
    gcloud auth activate-service-account --key-file /root/service_key.json

CMD ["/bin/bash", "-c", "tail -f /dev/null"]