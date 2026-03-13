class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.4.2/rum-aarch64-apple-darwin.tar.gz"
      sha256 "f8dcfc98478b0d4513a2bddf1e8c3d44230f07be0bd2ed35a5518e635076670e"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.4.2/rum-x86_64-apple-darwin.tar.gz"
      sha256 "82da07ca2fb3ba6e7165c6664e07be940efa0fb3784ba050990c65ab322d1f84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.4.2/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "892eea6a3065dddb171efaf2523efd0c04fb3c7ab1ebd8091263ed5fac789a9a"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.4.2/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1fe3cef7d80d7701b7e6a29a641f33477b1a634d2550f3dbab4f0d20acd37f29"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
