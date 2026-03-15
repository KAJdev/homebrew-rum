class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.6.0/rum-aarch64-apple-darwin.tar.gz"
      sha256 "9080e68cf3173f14aa1109c90ac83de779856ee173fdacf8156e9fa53643aeec"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.6.0/rum-x86_64-apple-darwin.tar.gz"
      sha256 "6f570430ea2e305bb592dbbbb8bb7e9592758770c8826b2004702271dbb37058"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.6.0/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e51c255404a919813237bee89f98ebc3443ce28b1d6df3eedc40a36b5772903a"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.6.0/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fefdb2c247813fb9d2ae5db9734f859841bbd756f0805c6c1795b7be12a6dcb1"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
