IMAGE_NAME := ves
CONTAINER_NAME := ves-container
CONTAINER_BASE_PATH := /app

.PHONY: install build dev start stop

install:
	@docker build -t $(IMAGE_NAME) .
	@docker run --rm -d --name=$(IMAGE_NAME)-install $(IMAGE_NAME) tail -f package.json
	@docker cp $(IMAGE_NAME)-install:$(CONTAINER_BASE_PATH)/node_modules $(PWD)/node_modules
	@docker stop $(IMAGE_NAME)-install

build:
	docker build -t $(IMAGE_NAME) .
	docker run --rm -v $(PWD):/app $(IMAGE_NAME) yarn build

dev:
	@docker build -t $(IMAGE_NAME) .
	@docker run --rm \
	--name=$(IMAGE_NAME)-build \
	-v $(PWD):$(CONTAINER_BASE_PATH) \
	-p 3000:3000 \
	$(IMAGE_NAME) sh -c "yarn dev"
start:
	docker build -t $(IMAGE_NAME) .
	docker start $(CONTAINER_NAME)

stop:
	docker build -t $(IMAGE_NAME) .
	docker stop $(CONTAINER_NAME)