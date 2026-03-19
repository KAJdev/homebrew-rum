class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.7.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.9/rum-aarch64-apple-darwin.tar.gz"
      sha256 "86c925611030bc324f0c27892670b789dddc85119ad916d42683c9d6d6e9deea"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.9/rum-x86_64-apple-darwin.tar.gz"
      sha256 "3a48f82d52302c7ded6a53a43fdd183396e05131f3870fb98192b2409dfad347"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.9/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "abc92949d34aef511a49534df68c64bb005dc259917b227fda5b32bfc57faf6c"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.9/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0c24014f37bdea7593f4754c40df7a152927d885261faab5224271f7734e5a1"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
