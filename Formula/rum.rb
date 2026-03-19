class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.7.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.11/rum-aarch64-apple-darwin.tar.gz"
      sha256 "2bb5788ccf30c6bd3bab800513e73369cc75a0063e0e0ad6d2865e19ac96117a"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.11/rum-x86_64-apple-darwin.tar.gz"
      sha256 "399c6433bf782a5931d99506b8225704dc9b470a26573e3d74b1641cd52aa441"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.11/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cfad7a5a7be6866aa948a65ae230694385d680b1959e54e2c25903c6831f5a09"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.11/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "982091e876ea78ad14ef36d4211f36c3bf67124840147070982b4c86754df85d"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
