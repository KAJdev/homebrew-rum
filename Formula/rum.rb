class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.5/rum-aarch64-apple-darwin.tar.gz"
      sha256 "e18ca9b9e1b85e023bd03f1c82d9dafe3e5686fd840688b7720918146c6ffb6d"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.5/rum-x86_64-apple-darwin.tar.gz"
      sha256 "cee31e41fbf435043fac3c0b2eb26fa4050ca0b950323fbf23d9045556ab8b55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.5/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "542b10e93059114a34459b71681e1467c71e5fc4c22dae7c3b4adf2fc7dc15f8"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.5/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9628162ee6d59f84d68f899701c866d43fb914fd0157404751acc96388c5cd87"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
