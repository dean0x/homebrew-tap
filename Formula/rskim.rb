class Rskim < Formula
  desc "Smart code reader - streaming code transformation for AI agents"
  homepage "https://github.com/dean0x/skim"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-aarch64-apple-darwin.tar.gz"
      sha256 "80bc43016af9f7b61095201a0dae7d6126b0c342d97ef9d151cdf9976b3b155a"
    end
    on_intel do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-x86_64-apple-darwin.tar.gz"
      sha256 "9f9cb3d04cb95b5c902d0c398aef0b2d06a89d45f226d56278b0158a9724e5d0"
    end
  end

  def install
    bin.install "skim"
  end

  test do
    system "#{bin}/skim", "--version"
  end
end
