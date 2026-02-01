class Rskim < Formula
  desc "Smart code reader - streaming code transformation for AI agents"
  homepage "https://github.com/dean0x/skim"
  version "0.9.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dean0x/skim/releases/download/v0.9.4/skim-aarch64-apple-darwin.tar.gz"
      sha256 "4d635bd23454fe70632d96968d2203fb2f7ea24d0d7bb2122f2bf52da5303318"
    end
    on_intel do
      url "https://github.com/dean0x/skim/releases/download/v0.9.4/skim-x86_64-apple-darwin.tar.gz"
      sha256 "ec39c4ff4f19b8edfcf9cb21581304b33c124b731e3e009834a6877105038c7d"
    end
  end

  def install
    bin.install "skim"
  end

  test do
    system "#{bin}/skim", "--version"
  end
end
