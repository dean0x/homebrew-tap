class Mino < Formula
  desc "Secure sandbox for AI coding agents using rootless containers"
  homepage "https://github.com/dean0x/mino"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-x86_64-apple-darwin.tar.gz"
      sha256 "4631ca26d5742ae9185e91604c636df3f7934790cce0a73f765c477552a52af9"
    end

    on_arm do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-aarch64-apple-darwin.tar.gz"
      sha256 "1a3dbecb54010c2d23a0bf1dfcccda05e5310e1e9f3e268c9998d1bd6f167691"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87083d51026580b6fdf2163575a6e8754c195286f377b5fccddb24b1916f6025"
    end

    on_arm do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "612a40c8e94cbb9ac94f7860eb64a36520ea694cfbe78491da20d1356f4d75f2"
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
