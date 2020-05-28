CLUSTER_NAME := $(shell whoami)-testcluster

VARS := ''

.PHONY: init
init:
	terraform init

.PHONY: fmt
fmt:
	terraform fmt

.PHONY: validate
validate:
	terraform validate

.PHONY: plan
plan: fmt validate init
	terraform plan ${VARS}

.PHONY: test
test: fmt
	go test ./test -timeout 1h -v
