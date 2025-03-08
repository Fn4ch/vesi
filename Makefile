IMAGE_NAME := ves
CONTAINER_NAME := ves-container
TAG ?= latest
PORT ?= 80:80

.PHONY: build run up stop rm clean logs
build:
    docker build -t $(IMAGE_NAME):$(TAG) .

# Запуск контейнера
run:
    docker run -d \
        -p $(PORT) \
        --name $(CONTAINER_NAME) \
        $(IMAGE_NAME):$(TAG)

# Сборка и запуск
up: build run

# Остановка контейнера
stop:
    docker stop $(CONTAINER_NAME) || true

# Удаление контейнера
rm: stop
    docker rm $(CONTAINER_NAME) || true

# Полная очистка (контейнер + образ)
clean: rm
    docker rmi $(IMAGE_NAME):$(TAG) || true

# Просмотр логов
logs:
    docker logs $(CONTAINER_NAME)

# Заход в контейнер
exec:
    docker exec -it $(CONTAINER_NAME) sh