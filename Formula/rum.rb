class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.3/rum-aarch64-apple-darwin.tar.gz"
      sha256 "5e40d856cb38331da4e8a6e124313091e25794c94f4e2b5fbacfa76ef8dfd702"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.3/rum-x86_64-apple-darwin.tar.gz"
      sha256 "fa3f80a7541545144cd56e8b902379ec8e6da1f2c6becbbe4d1b59502a6e6896"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.3/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c263efe1e3121710979e5754facbaf446286ca947a1845683f62f06791e23982"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.3/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65fc2068dd39e2512b8dff69b96ccf89dcddd70d5e8b5f3ca06c2bd1df3566fd"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
