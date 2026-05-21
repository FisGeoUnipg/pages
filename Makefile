IMAGE=harbor1.fisgeo.unipg.it/fisgeo/pages

.PHONY: all 
all: build push

.PHONY: check
check:
ifeq ($(IMAGE),)
	$(error "Missing IMAGE") 
endif

.PHONY: build
build: check
	./prepare.sh
	docker build -t $(IMAGE):latest .

.PHONY: push
push: check
	docker push $(IMAGE):latest
