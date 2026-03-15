class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.6.0/rum-aarch64-apple-darwin.tar.gz"
      sha256 "31e341c4b3d344027bfab5eba76dcc3d4ae9f88efb8b346126f3a09901fc20e6"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.6.0/rum-x86_64-apple-darwin.tar.gz"
      sha256 "a207d301b073061eecbafec2c345ac034f454ad7a99e955d3bb268c9ad935846"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.6.0/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bcdee162da5d8fbf8661afa7196b6ed627c54c586f68ad325c69afe288079edf"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.6.0/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1515f00c640249df5d5c232bc0715f6339e3288c12c44be8b66ed2abedcfb4d"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
