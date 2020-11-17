FROM docker:dind

RUN apk add --update bash gettext
RUN apk add py-pip python3-dev libffi-dev openssl-dev gcc libc-dev make && pip install docker-compose

CMD ["bash"]
