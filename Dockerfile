FROM docker.io/alpine:3.5
MAINTAINER sshnaidm <sshnaidm@gmail.com>

RUN apk add --no-cache python3 bash && \
python3 -m ensurepip && \
rm -r /usr/lib/python*/ensurepip && \
pip3 install --upgrade pip setuptools && \
rm -r /root/.cache && \
ln -s /usr/bin/python3 /usr/bin/python
