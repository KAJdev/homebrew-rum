class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.8/rum-aarch64-apple-darwin.tar.gz"
      sha256 "fbad6be58ec764fbf6f0ec6e5e779863a0865cc29ced35b1dc4b4b4160da3841"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.8/rum-x86_64-apple-darwin.tar.gz"
      sha256 "abdf15b694f7081d9a67aa8b9b5f4ba6d63372b44ac002325c97b3a99417609d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.8/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e53b419f8a826f30966d383bcfab45ff7dfa83775fbe522fd04ac1ffdd31e751"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.8/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc4b2fa55cecffc8e306012fee2793869f581e72bfe7dd92a6461fc34b74d0de"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
