
{
  description = "hint — Starship-powered interactive command palette";
  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system:
        f nixpkgs.legacyPackages.${system});
    in
    {
      packages = forAllSystems (pkgs:
        let pname = "hint"; version = "0.2.0";
        in { default = pkgs.stdenv.mkDerivation {
          inherit pname version; src = ./.;
          installPhase = ''
            mkdir -p $out/share/hint $out/bin
            cp -r bin hint starship config scripts $out/share/hint/
            ln -s $out/share/hint/bin/hint $out/bin/hint
            ln -s $out/share/hint/bin/sysline $out/bin/sysline
          '';
          meta = with pkgs.lib; {
            description = "Starship-powered interactive command palette";
            license = licenses.mit;
            platforms = platforms.linux;
          };
        };});
    };
}
