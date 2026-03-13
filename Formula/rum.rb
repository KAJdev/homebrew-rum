class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.4.3/rum-aarch64-apple-darwin.tar.gz"
      sha256 "a1ad5a20fce640db4b406060c56dd2c7dbddbf71e091ee3992a0a2b61040d59e"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.4.3/rum-x86_64-apple-darwin.tar.gz"
      sha256 "c068a7ba87a1af375a1bded04ce1696832c5691249bfe6f06e945282d77a70d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.4.3/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18be685b27cdcc44cee84c67c887bb897c237b891b40c600083a36ff7adfbdf6"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.4.3/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b66cf7d720efd9914693bcc9f736110f5247201e6e8e01864883ae22aea66cf"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
