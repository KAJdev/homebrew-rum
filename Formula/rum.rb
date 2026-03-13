class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.3.6/rum-aarch64-apple-darwin.tar.gz"
      sha256 "d350df26a8eb4cceff1fbcf8b03ef94448763f522e8160a5ce0bbd0339d86d56"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.3.6/rum-x86_64-apple-darwin.tar.gz"
      sha256 "3f576dcac8176c78e010b5b468447c43d1254bb328058abac3d6588d63badecd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.3.6/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a85dabdcae8df67afaf2bcff062dbdfd30638c44e3685bc7ae6e1db03accc79"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.3.6/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6606f9925790dcd64edb203108a348f3bade46a66161b2cb58b06df645a6b827"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
