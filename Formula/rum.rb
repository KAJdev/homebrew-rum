class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.3/rum-aarch64-apple-darwin.tar.gz"
      sha256 "4a3b997c13a316303c5140320b2b8b4f8d67e0c5b8b37ceaf70e1b59d8738901"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.3/rum-x86_64-apple-darwin.tar.gz"
      sha256 "c531207ee6df67207f95d081cb2ed23093015efa2df4ac11cdcd835754ba9595"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.3/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "906c8996ac4adba6de27be835a9a0be9fa2d41abd11b3dc9ec0e3701b518fbc9"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.3/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06fdc6653ea06a795ae6a5186acc77fe5cf9e0cb774be1e9d17c3e1caf6bb51a"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
