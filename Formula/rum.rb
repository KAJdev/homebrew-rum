class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.9/rum-aarch64-apple-darwin.tar.gz"
      sha256 "bccfca78118fc7d6d50c7114298b2970f0af78f6785662a4c0c94e03d1e89b0d"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.9/rum-x86_64-apple-darwin.tar.gz"
      sha256 "8ec22910a5fa9b163057f26cd87b54d742780929136bdcaa5f01ef1a996d83cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.9/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "905c657fefd61e37de724090219a8bc841f3a8c5a461e06dd5b7b83eff66b92a"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.9/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bcbaebd20f82626ce96db045281180887218804d55ce8189231dbb4696c05d81"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
