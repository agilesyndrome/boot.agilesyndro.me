docker:
	docker build -t bop -f Dockerfile $$(mktemp -d)

dev:
	docker run -it bop bash
