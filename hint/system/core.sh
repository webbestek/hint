#!/usr/bin/env bash
set -euo pipefail
printf "SYS	Uptime & load	uptime	Quick look at system load\n"
printf "SYS	Memory usage	free -h	Human-readable RAM summary\n"
printf "SYS	Disk usage	df -h .	Usage for current filesystem\n"
printf "SYS	CPU info	grep -m1 "model name" /proc/cpuinfo	CPU model\n"
printf "SYS	Services (systemd)	systemctl list-units --type=service --state=running	Running services\n"
