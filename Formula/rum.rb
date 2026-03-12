class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.3.1/rum-aarch64-apple-darwin.tar.gz"
      sha256 "3dde8504ea61de4eea60cf34b6dd8c503aacc59eee3d06fe2e4ffaf06d2b56e0"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.3.1/rum-x86_64-apple-darwin.tar.gz"
      sha256 "653a6126bdb2bf3b1b9ef8ec72ff75c926e97702361f8cfdd9b8fc18ca7b435e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.3.1/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b4072fc830844021d97849986f7124f7844fdd243054ddca135db290cdec19d"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.3.1/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7902d39f459257fb2635b54ba128c2b2fcf79acbac8ffb58d3c325263feb1295"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
