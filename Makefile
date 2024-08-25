test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

lint:
	docker compose -f docker-compose.yml run app make lint

dev:
	docker run -p 8080:8080 -e NODE_ENV=development badta5te/devops-level-one make dev

build:
	docker compose -f docker-compose.yml build
