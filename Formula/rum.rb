class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.6.1/rum-aarch64-apple-darwin.tar.gz"
      sha256 "a7aa70eee4c9ca75487bad2ec93622b3365e71df048dbd6bdb382f7217991101"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.6.1/rum-x86_64-apple-darwin.tar.gz"
      sha256 "eddf01748367261f85f2c5047d31a70b0baabda472ac55b157410a0fd6742fd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.6.1/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "160b99bc5e9d141081d43897def516d7c1e13d37e04e0150db269350b527fc4b"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.6.1/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e5fde719eb9085fe7b9d34faaa6c63039146ff8538c204215e56e0a29716970e"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
