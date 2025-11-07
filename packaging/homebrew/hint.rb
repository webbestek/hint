
class Hint < Formula
  desc "Starship-powered interactive command palette"
  homepage "https://github.com/kevin4hrens/hint"
  version "0.1.0"
  url "https://github.com/kevin4hrens/hint/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_WITH_REAL_SHA256"

  depends_on "starship"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/hint"
    bin.install_symlink libexec/"bin/sysline"
  end

  def caveats
    <<~EOS
      Add the custom module from:
        #{opt_libexec}/starship/hint.starship.toml
      into your ~/.config/starship.toml, then reload your shell.
    EOS
  end
end
