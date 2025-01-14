
env:
	python3 -m venv env


deps: env
	env/bin/pip install -U pip && env/bin/pip install -r requirements.txt


build:
	docker build -t pharmassist .


deploy: build
	docker-compose -f deploy/docker-compose.yml up -d


destroy:
	docker-compose -f deploy/docker-compose.yml down

