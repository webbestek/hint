#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "DOCKER	Containers	docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'	Running containers"
printf '%s\n' "DOCKER	Compose up	docker compose up -d	Start services"
