FROM docker:latest

RUN \
	apk -Uuv add make gcc groff less \
		musl-dev libffi-dev openssl-dev \
		python3-dev py3-pip git && \
	pip install awscli docker-compose && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*
