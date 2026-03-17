class Rum < Formula
  desc "A diff-centric coding agent TUI"
  homepage "https://github.com/KAJdev/rum"
  version "0.7.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.4/rum-aarch64-apple-darwin.tar.gz"
      sha256 "54377002765fcd39b2475c33ad11a06cd8e69fa78811d601dad727ae33222eff"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.4/rum-x86_64-apple-darwin.tar.gz"
      sha256 "92097dc7ed406956748b0141e58f703db64fc926e3431639e427ce23ddc5392f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/KAJdev/rum/releases/download/v0.7.4/rum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b681c60ce2ed595c190a64c764a291440c49f208a46335f1162d574f096642fc"
    else
      url "https://github.com/KAJdev/rum/releases/download/v0.7.4/rum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7193184225db2093e3e6d63b7f78e0afbdcfe78ca74ffa625dfa456eb3215c7"
    end
  end

  def install
    bin.install "rum"
  end

  test do
    assert_match "rum", shell_output("#{bin}/rum --help")
  end
end
