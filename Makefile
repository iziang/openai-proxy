VERSION ?= v0.1.0
REGISTRY ?= docker.io
BUILDX_PLATFORM ?= linux/amd64
BUILDX_ARGS ?= --sbom=false --provenance=false

image:
	docker buildx build -t $(REGISTRY)/apecloud/openai-proxy:$(VERSION) --platform $(BUILDX_PLATFORM) $(BUILDX_ARGS) --push -f ./Dockerfile  .