class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.2/rum-aarch64-apple-darwin.tar.gz"
      sha256 "2ce4f5f83916f44a08fbf980d43278abc2c00e7152d696afb307691c0695edd8"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.2/rum-x86_64-apple-darwin.tar.gz"
      sha256 "5675a5dfc1544c82d01d7a3ab1215ae3ea94322cf1bc73390d958df0b51ea282"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.2/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d2b95b6c97fa8bbc4e0729b1df0c23b24414933296f2940e7f294bdd0445065d"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.2/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1931014aff38b285f01ed87ca6b4fdfb1d62eeb64ec05a29925c3a0dae2ef4c3"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
