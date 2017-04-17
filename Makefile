IMAGE=jenkins-squid

run:
	docker run --rm -p 3129:3128 $(IMAGE)

build:
	docker build -t $(IMAGE) .
