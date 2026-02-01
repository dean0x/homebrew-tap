class Rskim < Formula
  desc "Smart code reader - streaming code transformation for AI agents"
  homepage "https://github.com/dean0x/skim"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dean0x/skim/releases/download/v0.9.3/skim-aarch64-apple-darwin.tar.gz"
      sha256 "59c4f4f5e3f4b9201ff23eb043d85e6bfa64d5e29a76ce2af293dd818b538564"
    end
    on_intel do
      url "https://github.com/dean0x/skim/releases/download/v0.9.3/skim-x86_64-apple-darwin.tar.gz"
      sha256 "0e3f1ea24702b3d57559e5e1f6af6f067a699828f944cf6c63ed137650414a10"
    end
  end

  def install
    bin.install "skim"
  end

  test do
    system "#{bin}/skim", "--version"
  end
end
