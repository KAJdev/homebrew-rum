class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.7.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.10/rum-aarch64-apple-darwin.tar.gz"
      sha256 "7b417c8631b8786653758dab612c3dc1a68f74b6df62a875b55ca84c68a19c76"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.10/rum-x86_64-apple-darwin.tar.gz"
      sha256 "8e6f728c46a414a33840e81ef98e49b582da50d5d814955d8e25b0e06755fbd2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.10/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa9dd578f6c9626fb8b83ca114225f6df8f8db8aa5a0c6c702a1fe15d64b1f20"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.10/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a00b93ee58e3fada9c762f015597900d597becdab1af5a97fdc6e75a1e7ac2b5"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
