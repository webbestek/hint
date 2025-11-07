#!/usr/bin/env bash
set -euo pipefail
printf "DOCKER	Containers	docker ps --format "table {{.Names}}	{{.Status}}	{{.Ports}}"	Running containers\n"
printf "DOCKER	Compose up	docker compose up -d	Start services\n"
