FROM alpine
LABEL MAINTAINER pentestdatabase@gmail.com

RUN apk add --no-cache python3 py3-pip git && \
    rm -rf /var/cache/apk/*

RUN git clone https://github.com/ismailtasdelen/shodansploit.git /tmp/shodansploit

WORKDIR /tmp/shodansploit
RUN pip install -r requirements.txt

ENTRYPOINT ["python3", "shodansploit.py"]
