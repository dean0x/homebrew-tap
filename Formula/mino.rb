class Mino < Formula
  desc "Secure sandbox for AI coding agents using rootless containers"
  homepage "https://github.com/dean0x/mino"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-x86_64-apple-darwin.tar.gz"
      sha256 "1330b18efed8788a22471f296b113130322ef5f6ed13b7756f95d3e8f1c9a638"
    end

    on_arm do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-aarch64-apple-darwin.tar.gz"
      sha256 "4e9ab3f4479c315b2900771a3c1692af56448e182e8897ff66723f71882c8444"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32a9528394f5b268f49d207a1681a4159781c4c4b4ed74553f93c07e749c4329"
    end

    on_arm do
      url "https://github.com/dean0x/mino/releases/download/v#{version}/mino-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c121ac12041bd485b2f0b2b0f2ff4f300a39e43abdb3eb3e1fe55b53d98da4b"
    end
  end

  def install
    bin.install "mino"
  end

  test do
    # Verify binary runs and reports version
    assert_match version.to_s, shell_output("#{bin}/mino --version")

    # Verify config subcommand works without any runtime dependencies
    assert_match "config.toml", shell_output("#{bin}/mino config path")

    # Verify help output contains expected commands
    output = shell_output("#{bin}/mino --help")
    assert_match "run", output
    assert_match "cache", output
    assert_match "status", output
  end
end
