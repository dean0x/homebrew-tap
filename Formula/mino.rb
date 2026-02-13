class Mino < Formula
  desc "Secure sandbox for AI coding agents using rootless containers"
  homepage "https://github.com/dean0x/mino"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-x86_64-apple-darwin.tar.gz"
      sha256 "fbadefb1d6a7fc15703d0a32a449f8783e3328f95a93dcb9e259240faa4d30fc"
    end

    on_arm do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-aarch64-apple-darwin.tar.gz"
      sha256 "91f57ef794b71074b9b3390a7edfaa067ced62938d04ccf726e8ea6c7c87a282"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f9de0bbc4497190e40db367bfc051ce781f57754074fb9f19bffd7e8bbecf92"
    end

    on_arm do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "290cebf6e02a4bad91ba8bf645dc2dd336b2e5fcea35f3f241e36ce69163612d"
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
