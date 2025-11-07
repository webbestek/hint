#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' \"PHP	Version	php -v	PHP version\"
printf '%s\n' \"PHP	Composer diagnose	composer diagnose	Check composer setup\"
printf "PHP	Server here	php -S localhost:8000	Built-in server\n"\nprintf "PHP	Composer update	composer update	Update deps (careful)\n"\n