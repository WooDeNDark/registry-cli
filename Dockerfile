FROM python:3.12.4-alpine

ADD requirements-build.txt /

RUN pip3 install -r /requirements-build.txt

ADD registry.py /

ENTRYPOINT ["/registry.py"]
