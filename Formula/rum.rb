class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.14/rum-aarch64-apple-darwin.tar.gz"
      sha256 "abf7c3c490762c425793c9920077a02981d34acc6f58a33a3d0910e3d603203f"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.14/rum-x86_64-apple-darwin.tar.gz"
      sha256 "71e761c56d26c3ed9276c05cf475a487cf216c4d6d97536ba8148b158627844e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.14/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "13e0c5902b46b365a3cd35535e142f2c3c71f0a56c3fd26de9b51dffd7c9952f"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.14/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba6b15b68e6277b20019871d07da965d22dac46770226ceec3162e8fd8858ca5"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
