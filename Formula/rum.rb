class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.5/rum-aarch64-apple-darwin.tar.gz"
      sha256 "f3af5a0248f39a086dbfb6897e06678b39cb415b70e7802f6d0d8e58a8e8ec88"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.5/rum-x86_64-apple-darwin.tar.gz"
      sha256 "2c2adfadb1be8e5fcecf0cfa51db35df593c743e09aea2b5d0d848930f8e1c3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.5/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5a65f7db83228ed946a4d459535297243068235bcff80340087ea0e4c82fb942"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.5/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1387a4eb5aef037d4b31e9a19dbc40747239b778eabc607a9bde6d1cc95e9cc"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
