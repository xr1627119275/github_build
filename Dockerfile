FROM python:3.7-alpine 
ENV PATH /usr/local/bin:$PATH
RUN set -eux; \
	\
	apk add --no-cache --virtual .build-deps \
	build-base libffi-dev curl krb5-dev linux-headers zeromq-dev; \
	pip3 install python-miio flask; \
	apk del --no-network .build-deps; \
#ENTRYPOINT 
#CMD ["/bin/sh"]
#CMD ["/usr/local/bin/python3", "/app/run.py"]
ENTRYPOINT ["/usr/local/bin/python3", "/app/run.py"]

