class Mino < Formula
  desc "Secure sandbox for AI coding agents using rootless containers"
  homepage "https://github.com/dean0x/mino"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-x86_64-apple-darwin.tar.gz"
      sha256 "01616da2b663cb1ace5e7ca019ff0bdb79df14c55e2cc4c94cda79d9a3b16b83"
    end

    on_arm do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-aarch64-apple-darwin.tar.gz"
      sha256 "afb285e8782ed04c1f59bd365491658a90477478ccd7c1e257a33c7af01ee7a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dacff025816aa1fde626fed1c4018d0de6a1a68c0eda2f776fc4f23682273edf"
    end

    on_arm do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1fb168592b72bdb7e2911613ce86c6a26f28d471541b7d0f1fd35fdbbc842a2b"
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
