class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.12/rum-aarch64-apple-darwin.tar.gz"
      sha256 "3183812e522af5b8750cb2d64f35bb5574230137b6405ea86656fc79e8fb71c9"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.12/rum-x86_64-apple-darwin.tar.gz"
      sha256 "11d39b944284eddbc5d837c1c18d1859f12f872dde62f3e5b44d66fe29cd1cbd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.12/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1cd2bb773b3782aba40cd7de63ca1e9fa73c396ccc02a50e6c48144a412e7952"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.12/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dca5d47b5848cfa7b0e1d62b47f479d1fb47fb069e25da66cca03b3ccfb48cb7"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
