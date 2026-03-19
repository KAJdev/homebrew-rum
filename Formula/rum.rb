class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.7.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.11/rum-aarch64-apple-darwin.tar.gz"
      sha256 "4939be412dc3fce0dd72367ebdb0b77d36aeabcdf211a2a2d8b1627e15185949"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.11/rum-x86_64-apple-darwin.tar.gz"
      sha256 "335eaa276801928e1d7ac4d5dc7dc1faf2a82c0b2f8acf785bb80c9e243d227a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.11/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "178ac3c1720dd067160bc12a3ea5cfa7d71bedd7002eada42a40cad0d910d4bd"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.11/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a869940298c570afd82d22b8bcc56a034a6890b0536830f631bb6f961e3b4128"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
