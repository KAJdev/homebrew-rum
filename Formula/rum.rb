class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.4/rum-aarch64-apple-darwin.tar.gz"
      sha256 "e5aadd3ee0599ac5f43b2e94d4df2b1323e015e3669c79be50fd18233f85c2b6"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.4/rum-x86_64-apple-darwin.tar.gz"
      sha256 "b2b0df560d9db3f1dc5a99bbebbc3901c75afa1f60100003f8b45c40763bed75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.5.4/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bbbfa47c5d523b83e647dd46eebc478be6ca12bb700f430d186c5f8d5508b056"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.5.4/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fbd42e9beb68a3ea1f570accf5f30fca844bdb328179a2eeb389cde8c574dd73"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
