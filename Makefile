up:
	@docker compose up -d

dev:
	@docker compose up

down:
	@docker compose down

down-volumes:
	@docker compose down --volumes

check-status:
	@nvidia-smi

verify-gpu-access:
	@glxinfo | grep "OpenGL renderer"
