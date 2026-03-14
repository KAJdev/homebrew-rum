class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.16/rum-aarch64-apple-darwin.tar.gz"
      sha256 "a72fdc7fe9a68b356b5c93a0983b12257eee88e99bf1b4ab583f9ec2c558adb7"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.16/rum-x86_64-apple-darwin.tar.gz"
      sha256 "4aed9e5d1fb3a50a3425feac7b0497e8a3c0e2dc0b1ca728d02abc4d8b6f3442"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.16/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a5ae16abb4e9d9e2068d018ee27c5ed7e48b609049e722ff1ae2b753b26d819f"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.16/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d20337690ce560adcc2526e28e91a7f0f8ebbc678f876869e14649cc7afb1df"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
