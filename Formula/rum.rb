class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.15/rum-aarch64-apple-darwin.tar.gz"
      sha256 "5499318f1dc0fafbbfa0db0afe31a1ec69129619f2a70d801a4201f6af291b7c"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.15/rum-x86_64-apple-darwin.tar.gz"
      sha256 "6f311a04e622775f4de4b7eb18ef6ec36367591f5cc3d61044b1cefd8120c5ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.15/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9d530cb291783de858d8b2bae1b62be1bf4c1e3df08d5d4ea9d5181a9fae28c"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.15/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c6b3bcdc6afde8e3321a04cb59f0c15617595904ca5bec8cd06e9758b5585c4f"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
