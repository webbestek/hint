# ----------------------------------------------------------------------------
# Copyright (c) 2025 Kevin Ahrens
# Made with ❤️ by Kevin — and the community.
# Licensed under the MIT License (see LICENSE).
# ----------------------------------------------------------------------------
#!/usr/bin/env bash
set -euo pipefail
printf "DOCKER	Containers (ps)	docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'	List containers\n"
printf "DOCKER	Images	docker images	List images\n"
printf "DOCKER	Prune unused	docker system prune -f	Clean up (careful)\n"
printf "DOCKER	Compose up (bg)	docker compose up -d	Start services\n"
printf "DOCKER	Compose down	docker compose down	Stop and remove services\n"
printf "DOCKER	Logs (follow)	docker compose logs -f --tail=100	Follow logs\n"
printf "DOCKER	Exec shell	docker compose exec <service> bash	Shell in container\n"
