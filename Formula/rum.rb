class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.11/rum-aarch64-apple-darwin.tar.gz"
      sha256 "8b6fd444558ad9ce2293707c84f0d869a1b6650a0db630e80a2570b7936b96c5"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.11/rum-x86_64-apple-darwin.tar.gz"
      sha256 "bd500cad068a0031f0e09e656fcccafb8155ba9b35f64a69bc84acea5986f914"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.11/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f28719250068afe091ac0a59e45ffda22c0badc89bb8b5ed72611c434eabb5ef"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.11/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1bcdd02284f13d0b167a5a3ef2e086dc41950b7ea97b66c8ceeef0ec20839abf"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
