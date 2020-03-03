bop=bash

docker:
	docker build -t bop -f Dockerfile .

build:
	docker run \
            -e AWS_ACCESS_KEY_ID \
            -e AWS_SECRET_ACCESS_KEY \
            -e AWS_DEFAULT_REGION \
            -it bop $(bop)

