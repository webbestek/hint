
.PHONY: all build tar deb lint install

all: build

build:
	./scripts/build.sh

tar:
	VERSION=$(shell git describe --tags --abbrev=0 | sed 's/^v//') ./scripts/build.sh

deb:
	command -v fpm >/dev/null 2>&1 || (echo "Install fpm (gem install --no-document fpm)" && exit 1)
	VERSION=$(shell git describe --tags --abbrev=0 | sed 's/^v//') ./scripts/build.sh

lint:
	shellcheck -x bin/* hint/**/*.sh scripts/*.sh config/*.sh || true

install:
	./scripts/install.sh
