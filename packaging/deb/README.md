
# Debian/Ubuntu packaging (quick)

We recommend using `fpm` to build a simple .deb from a tagged release:

```bash
VERSION=0.1.0
curl -L -o hint.tar.gz https://github.com/kevin4hrens/hint/archive/refs/tags/v${VERSION}.tar.gz
tar xzf hint.tar.gz
cd hint-${VERSION}

mkdir -p pkg/usr/local/share/hint pkg/usr/local/bin
cp -r bin hint starship config scripts pkg/usr/local/share/hint/
ln -s ../share/hint/bin/hint pkg/usr/local/bin/hint
ln -s ../share/hint/bin/sysline pkg/usr/local/bin/sysline

fpm -s dir -t deb -n hint -v ${VERSION}   -C pkg   --license MIT   --description "Starship-powered interactive command palette"   usr/local/share/hint usr/local/bin/hint usr/local/bin/sysline
```

Publish the `.deb` on GitHub Releases.
