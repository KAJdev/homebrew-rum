class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.10/rum-aarch64-apple-darwin.tar.gz"
      sha256 "c733a17883349bf794dfe34dfa3fb239d815f8ffa88b745fa372040697fdc8a2"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.10/rum-x86_64-apple-darwin.tar.gz"
      sha256 "712437a16ca64b33150dc241dc4467b9d1f5caeb76bb74a6df12153a5c94658b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.10/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "434fa8c57971b4b385cf9398e3833c78673b87f0a3dd6115bdfa17a4f7c704c2"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.10/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1ee6b8fb0d60999f98b075c1af886ff5026374e65d524b9bb6830975a06908d"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
