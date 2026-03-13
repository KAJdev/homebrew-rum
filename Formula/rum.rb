class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.1/rum-aarch64-apple-darwin.tar.gz"
      sha256 "1640a8a9515c20c102fc0594c64fc24b00536b9d18cb0691923e1d7064fcbe9c"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.1/rum-x86_64-apple-darwin.tar.gz"
      sha256 "7239143923c799535b52fe51cd43db9425d0dc9af7e4c1a9aed749a933bd565b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.1/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "72a713b9b649e41e681d8ecf9b63694821c3bbe5e234e851895a793387fde2e0"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.1/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74dc27a6db7d6c7515d6eb9f957cdbf533946549e1b0e4d40abfcf3015f1b4ee"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
