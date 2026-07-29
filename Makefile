build:
	docker compose build
.PHONY: build


up:
	docker compose up -d
	docker compose exec dino bash -c "cd models/dino/ops && python setup.py build install && python test.py"
.PHONY: up


exec:
	docker compose exec dino bash
.PHONY: exec


down:
	docker compose down
.PHONY: down
