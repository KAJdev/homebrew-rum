class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.7/rum-aarch64-apple-darwin.tar.gz"
      sha256 "cc1edb1b1905a5a52181a318c115ef7565808e9d3c63a8dba9567613dc032438"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.7/rum-x86_64-apple-darwin.tar.gz"
      sha256 "6d0d168e451c996cdbb8f3364bb0afa95d687f5d18432912cd8d06af6a65f96f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.7/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "76c3117699776bc6236747c7948933d5d7e4abb88f884e3367bf337c35e2f5b7"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.7/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "859c8ff5422168d96969798d3ac0fa058d4fd348320fba96de4dd53151291550"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
