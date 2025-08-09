up:
	@docker compose up -d

ui-up:
	@docker compose -f docker-compose-ui.yml up -d

dev:
	@docker compose up

down:
	@docker compose down

ui-down:
	@docker compose -f docker-compose-ui.yml down

down-volumes:
	@docker compose down --volumes

check-status:
	@nvidia-smi

verify-gpu-access:
	@glxinfo | grep "OpenGL renderer"
