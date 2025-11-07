#!/usr/bin/env bash
set -euo pipefail
printf "SYS	Uptime & load	uptime	Quick look at system load\n"
printf "SYS	Memory usage	free -h	Human-readable RAM summary\n"
printf "SYS	Top processes	top -o %CPU	Interactive CPU view\n"\nprintf "SYS	GPU info	lspci | grep -i vga	Detect GPU\n"\n