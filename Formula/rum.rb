class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.7.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.12/rum-aarch64-apple-darwin.tar.gz"
      sha256 "97e64a368382f7a8b29b58da06f20017f514ac4dfcb78a72703e1ddadaec2984"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.12/rum-x86_64-apple-darwin.tar.gz"
      sha256 "cd168cb2ea201e5afca2a0feb3a488d2af536de66414247ed7435dc759e9ae8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.12/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "67a1c3c74e620611304887c98f68f978814f1c0532d6296f242aed10ecc8c1d8"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.12/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4af57e2c5728bfcd2b6288c964f09a28736725a74edd7e835906cfb88457ae6b"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
