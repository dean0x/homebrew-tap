class Mino < Formula
  desc "Secure sandbox for AI coding agents using rootless containers"
  homepage "https://github.com/dean0x/mino"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-x86_64-apple-darwin.tar.gz"
      sha256 "b6524501facade5b2d79355e43d0c32fbe6860222efc967d68fc78ffed338cd8"
    end

    on_arm do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-aarch64-apple-darwin.tar.gz"
      sha256 "f82801f7a07f9c9c61e08b7b88d6dbf55bb3ddcbec1a8c8a334d741a601bbcaf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08515276628033e557c3c3e799b780b4cf44381345b5e4f7b457660bc2ef6095"
    end

    on_arm do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46bd34e6b47dc6011610ed81929371ed73342c8b16753354a6b8fc27b8b6346f"
    end
  end

  def install
    bin.install "mino"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mino --version")
    assert_match "config.toml", shell_output("#{bin}/mino config path")
    output = shell_output("#{bin}/mino --help")
    assert_match "run", output
    assert_match "cache", output
    assert_match "status", output
  end
end
