#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' \"DOCKER	Containers	docker ps --format "table {{.Names}}	{{.Status}}	{{.Ports}}"	Running containers\"
printf '%s\n' \"DOCKER	Compose up	docker compose up -d	Start services\"
printf "DOCKER	Space cleanup	docker system prune -f	Remove unused data\n"\nprintf "DOCKER	Logs (container)	docker logs -f <name>	Follow container logs\n"\n