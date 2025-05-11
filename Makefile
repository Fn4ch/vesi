.PHONY: env build all up run down push pull clean

APP_PORT ?= 80
REGISTRY_IMAGE ?= vesi
PROJECT_NAME ?= vesi-kazan
VERSION ?= latest

# Сборка Docker-образа
build:
	docker build -t $(REGISTRY_IMAGE):$(VERSION) .

# Загрузка образа в реестр
push:
	docker push $(REGISTRY_IMAGE):$(VERSION)

# Скачивание образа из реестра
pull:
	docker pull $(REGISTRY_IMAGE):$(VERSION)

# Запуск контейнера
up: down
	docker run --name $(PROJECT_NAME) \
	-p 127.0.0.1:$(APP_PORT):80 \
	--detach \
	$(REGISTRY_IMAGE):$(VERSION)

# Остановка контейнера
stop:
	docker stop $(PROJECT_NAME) 2>/dev/null || true
	docker container rm $(PROJECT_NAME) 2>/dev/null || true

# Запуск контейнера в интерактивном режиме (для отладки)
run:
	docker run --rm -it \
	-p 127.0.0.1:$(APP_PORT):80 \
	$(REGISTRY_IMAGE):$(VERSION)

# Очистка всех ресурсов (контейнеры, образы)
clean:
	docker stop $(PROJECT_NAME) 2>/dev/null || true
	docker container rm $(PROJECT_NAME) 2>/dev/null || true
	docker rmi $(REGISTRY_IMAGE):$(VERSION) || true