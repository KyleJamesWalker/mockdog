build:
	docker build -t mockdog .

run: build
	docker run -it --rm -p 0.0.0.0:8125:8125/UDP mockdog
