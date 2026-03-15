class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.0/rum-aarch64-apple-darwin.tar.gz"
      sha256 "22faca935fcf9f8a58041d8c4eb61eee3dc415a2acf8288490fa9024a5301d31"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.0/rum-x86_64-apple-darwin.tar.gz"
      sha256 "99f8e5c71d9aa8555ddf8a41575ee77030a47345390c30942508eb6ab2926574"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.0/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b1cff8376066b06343c7700584168cf169ad8f1bd75de3b1d66a9735a1cd1a94"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.0/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "065d5593227619f570a2acec814c9a8daee5dddd49e7e8466f0eb3155ce81086"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
