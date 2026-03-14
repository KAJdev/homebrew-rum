class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.13/rum-aarch64-apple-darwin.tar.gz"
      sha256 "02aaa2fe2486a443a9d33e19e71fc4ffc701af37357965ea084173b14058d801"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.13/rum-x86_64-apple-darwin.tar.gz"
      sha256 "a88f9cf143ecc82ed1157fa79cb1e62e5e27e3bae5c36dfc31e055ba31f4dcfd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.13/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "abd29af7a77c03e1c535556ab8d6035431a8615ddd25985bef12bf922ad899ef"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.13/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dfbe739afe3e8bd2a3a0da459dfe58f88fc3bfc3334e01dc6846467fc9b7136a"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
