class Skim < Formula
  desc "Smart code reader - streaming code transformation for AI agents"
  homepage "https://github.com/dean0x/skim"
  version "2.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-aarch64-apple-darwin.tar.gz"
      sha256 "c898b1ebbef02b7ababd35edeb49789504df2764cbebf0ae5777f7a09b8f6546"
    end
    on_intel do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-x86_64-apple-darwin.tar.gz"
      sha256 "b824cd1ed31095812e9396b65c6af112f508ffc1e85d86fb44c880ef634f8415"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "532054c567af2c102006f466c1f56c17be629174fa2f3d57b2c3dc0718430049"
    end
    on_arm do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "068fd90b0eab449e09b09c664208ce8c65cebc277ea6c1bc1edc2b447a47a052"
    end
  end

  def install
    bin.install "skim"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skim --version")
    assert_match "structure", shell_output("#{bin}/skim --help")
  end
end
