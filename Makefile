SHELL := /bin/bash

## help: print this help message
.PHONY: help
help:
	@echo 'Usage:'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

# ==============================================================================
# Development support

## run: run the server
.PHONY: run
run:
	@go run cmd/main.go

## tidy: tidy the go modules
.PHONY: tidy
tidy:
	@go mod tidy

## vendor: vendor the go modules
.PHONY: vendor
vendor:
	@go mod vendor

## build: build the server
.PHONY: build
build:
	@echo "Building the server..."
	@go build -o interview-prep cmd/main.go
	@echo "Done!"

# ==============================================================================
# Docker support

## docker-build: build the docker image
.PHONY: docker-build
docker-build:
	@echo "Building the docker image..."
	@docker compose up
	@echo "Done!"
