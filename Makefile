DEV_IMAGE=node:lts
DEV_CONTAINER_NAME=website-dev

dev-run:
	docker run \
		--name "$(DEV_CONTAINER_NAME)" \
		-d \
		--entrypoint=tail \
		-v "$$PWD:/app" \
		--workdir "/app" \
		-p 3000:5173 \
		-u 1000:1000 \
		"$(DEV_IMAGE)" \
		-f /dev/null

dev-rm:
	docker rm \
	-f \
	"$(DEV_CONTAINER_NAME)"
	
dev-exec:
	docker exec \
		-it \
		"$(DEV_CONTAINER_NAME)" \
		"bash"