VERSION=0.1.0

.PHONY: build push

build: Dockerfile
	docker build -t aoepeople/s3-sftp-proxy:${VERSION} .
	docker tag aoepeople/s3-sftp-proxy:${VERSION} aoepeople/s3-sftp-proxy:latest

push: build
	docker push aoepeople/s3-sftp-proxy:${VERSION}
	docker push aoepeople/s3-sftp-proxy:latest
