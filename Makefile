SHELL = '/bin/bash'
repository_name ?= damacus
export DOCKER_BUILDKIT ?= 1
dockerfile ?= Dockerfile
tag ?= local

build build_arm64 build_armv7:
	docker build -t ${repository_name}/pms-docker:${tag} -f ${dockerfile} .

build: dockerfile=Dockerfile
build_armv7: dockerfile=Dockerfile.armv7
build_arm64: dockerfile=Dockerfile.arm64
