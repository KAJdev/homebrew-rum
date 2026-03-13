class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.6/rum-aarch64-apple-darwin.tar.gz"
      sha256 "575d02e68005f2128217c4113484854cfaba0b4298edc1ce8cab3acd89914a38"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.6/rum-x86_64-apple-darwin.tar.gz"
      sha256 "7623fd961adf517cf2363aa7297dd65a388f46a2bcf1971ddfd081ff48700729"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.6/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e2583653a146b69fef42299a00e1cac53bc36ba6c6a4270bfce766259e6d5b34"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.6/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d599f6eef7dffab1f43216593343973e8cc027cc45da451eba04e370a549b1de"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
