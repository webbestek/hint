#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "{BASH_SOURCE[0]}")/.." && pwd)"
DIST="$ROOT/dist"
mkdir -p "$DIST"

VERSION="${VERSION:-0.3.0}"
echo "Building hint version: $VERSION"

TARBALL="$DIST/hint-$VERSION.tar.gz"
tar -C "$ROOT" -czf "$TARBALL"   --exclude .git --exclude dist   bin hint starship config scripts README.md INSTALL.md CONTRIBUTING.md CODE_OF_CONDUCT.md LICENSE .shellcheckrc .github packaging

sha256sum "$TARBALL" | tee "$TARBALL.sha256"

if command -v fpm >/dev/null 2>&1; then
  WORK="$DIST/pkgroot"
  rm -rf "$WORK"
  mkdir -p "$WORK/usr/local/share/hint" "$WORK/usr/local/bin"
  cp -r "$ROOT/bin" "$ROOT/hint" "$ROOT/starship" "$ROOT/config" "$ROOT/scripts" "$ROOT/man" "$WORK/usr/local/share/hint/"
  ln -sf ../share/hint/bin/hint "$WORK/usr/local/bin/hint"
  ln -sf ../share/hint/bin/sysline "$WORK/usr/local/bin/sysline"
  pushd "$WORK" >/dev/null
  fpm -s dir -t deb -n hint -v "$VERSION"     --license MIT     --description "Starship-powered interactive command palette"     --vendor "Kevin Ahrens"     --url "https://github.com/kevin4hrens/hint"     --after-install "$ROOT/scripts/install.sh"     usr/local/share/hint usr/local/bin/hint usr/local/bin/sysline -p "$DIST"
  popd >/dev/null
  echo "Deb built in $DIST"
else
  echo "Skipping .deb (fpm not installed). Install: gem install --no-document fpm"
fi

echo "Done; artifacts in $DIST"
