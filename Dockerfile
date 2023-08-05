FROM python:3.7-alpine 
RUN set -eux; \
	\
	apk add --no-cache --virtual .build-deps \
	build-base libffi-dev curl krb5-dev linux-headers zeromq-dev; \
	pip3 install python-miio; \
	apk del --no-network .build-deps; \
CMD ["/bin/sh"]
#CMD ["python3"]
