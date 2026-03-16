class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.1/rum-aarch64-apple-darwin.tar.gz"
      sha256 "ddff38a593d247485c8cf93874aeb740a3d9b5ad028a21df650cf859a42f997a"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.1/rum-x86_64-apple-darwin.tar.gz"
      sha256 "8fc5e41cafb51f993ee71cbb3749082f250a79deee50983cba72bd214c3334a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.1/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd4612bf52d706755826da42d6f2ed6356f3dbdd5d02c070fb1d23dbaf7d1d1e"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.1/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d01ea539943104ef5e56f892c34faa71ef195c3e8d433c8f82c7df44da1b20a2"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
