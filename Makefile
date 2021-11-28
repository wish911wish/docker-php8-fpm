up:
	docker-compose up -d
down:
	docker-compose down --remove-orphans
init:
	docker-compose up -d --build
destroy:
	docker-compose down --rmi all --volumes --remove-orphans
remake:
	@make destroy
	@make init
web:
	docker-compose exec web ash
app:
	docker-compose exec app bash
