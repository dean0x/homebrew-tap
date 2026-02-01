class Rskim < Formula
  desc "Smart code reader - streaming code transformation for AI agents"
  homepage "https://github.com/dean0x/skim"
  version "0.9.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dean0x/skim/releases/download/v0.9.5/skim-aarch64-apple-darwin.tar.gz"
      sha256 "32fe90077bae4c8c56d17485a86b0fa22f6d6f52afdbdec16c853a708fed1dc5"
    end
    on_intel do
      url "https://github.com/dean0x/skim/releases/download/v0.9.5/skim-x86_64-apple-darwin.tar.gz"
      sha256 "a59a1114d0849c03a41478f96d5de18974753e96f18045cab07581955a922f0e"
    end
  end

  def install
    bin.install "skim"
  end

  test do
    system "#{bin}/skim", "--version"
  end
end
