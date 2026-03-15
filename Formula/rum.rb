class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.6.0/rum-aarch64-apple-darwin.tar.gz"
      sha256 "d09bc3aaa52b483e15df7205dc1d9d8440d3e39671a1fb032c9756015f4bdc5d"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.6.0/rum-x86_64-apple-darwin.tar.gz"
      sha256 "40a3c0618ce6164a563432f0ff64f05a13aa56e2e87c09a78c03bbd56499be1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.6.0/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd28719c540edb1c38e49f5bed4f6de554d37a059e436ebe8b218c7c17b066f3"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.6.0/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "90454a0d88dc775f768ee334f3922a1e917c06798ace1cd33e1c24d9c6ac5705"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
