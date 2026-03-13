class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.2/rum-aarch64-apple-darwin.tar.gz"
      sha256 "d3d8d76c9ddef0ee61e1b2c5e19e4d9640334ff19b0c6f9b050fe3908b967169"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.2/rum-x86_64-apple-darwin.tar.gz"
      sha256 "a1356d445fb41a6c47193b5822d1cc743fe04507d3de2e3e094b67c4726445ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.2/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "474146f945e957854416c394ec4fcfff328df0bb39df0309e477ff5cf5f777d0"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.2/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a814a16c89670ccb488e5cfdc9bef691c0c78f77f3b42cf5cbfaed282cc78c5"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
