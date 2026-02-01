class Rskim < Formula
  desc "Smart code reader - streaming code transformation for AI agents"
  homepage "https://github.com/dean0x/skim"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dean0x/skim/releases/download/v0.9.2/skim-aarch64-apple-darwin.tar.gz"
      sha256 "ad9b72cd7f8ace94177243152dd45944c5ea0fc109383c00cf1e880361ef8605"
    end
    on_intel do
      url "https://github.com/dean0x/skim/releases/download/v0.9.2/skim-x86_64-apple-darwin.tar.gz"
      sha256 "ca568dd154858863b633d12e0529c0f50b7be0573073367ce11336aad352f32b"
    end
  end

  def install
    bin.install "skim"
  end

  test do
    system "#{bin}/skim", "--version"
  end
end
