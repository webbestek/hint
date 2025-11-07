#!/usr/bin/env bash
set -euo pipefail
printf "PHP	Version	php -v	PHP version\n"
printf "PHP	Composer diagnose	composer diagnose	Check composer setup\n"
printf "PHP	Server here	php -S localhost:8000	Built-in server\n"\nprintf "PHP	Composer update	composer update	Update deps (careful)\n"\n