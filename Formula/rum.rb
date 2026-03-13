class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.0/rum-aarch64-apple-darwin.tar.gz"
      sha256 "bc1eabe31840337460ea21c2432ea15115d2b47663cfab0cceed600e99709fbb"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.0/rum-x86_64-apple-darwin.tar.gz"
      sha256 "83a8dd93b9b000f8427add3f6108bd6f6ef0417e29c00eb75baa79d81d6914f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.0/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6de89829182167b32d91db2ca5be36b5768ffb19446ab7d4c05d56a349c05839"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.0/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ba4993ba91bb188566d3d98d81c5809cf05d484dbfd76a67f2d2f2440001724"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
