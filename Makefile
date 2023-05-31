.PHONY: init password up down

init:
	poetry config virtualenvs.in-project true
	poetry config virtualenvs.path "./.venv"
up:
	docker compose up --build --remove-orphans
down:
	docker compose down
destroy:
	docker compose down -v
