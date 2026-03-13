class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.4.1/rum-aarch64-apple-darwin.tar.gz"
      sha256 "f0540f27cbd367e637c726cfc1c640bd98a389dabd3ad34bb3f474954975c6d5"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.4.1/rum-x86_64-apple-darwin.tar.gz"
      sha256 "67626fce8db1d93468a3381e4a9cbbc074874915a1f54ba310cf9768127e9c87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.4.1/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83048dad931e801fae7e34a632e55ab6ed830b7bfddf746c1ae1c9ea0ed21672"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.4.1/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3675f4b85b026917d40efa995b14fec110b24b8abbf6af6b4bb15bf3bf32fd77"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
