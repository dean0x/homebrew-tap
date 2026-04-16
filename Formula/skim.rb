class Skim < Formula
  desc "Smart code reader - streaming code transformation for AI agents"
  homepage "https://github.com/dean0x/skim"
  version "2.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-aarch64-apple-darwin.tar.gz"
      sha256 "35b2f51fb5119a402e69604e2d9132db796f5dc9da18c8a5b2363a939432af25"
    end
    on_intel do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-x86_64-apple-darwin.tar.gz"
      sha256 "f53830c124f6012245705e5b12e0fe0b74a8f9f7c9cb2c6fd59f0c99bc34b31f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f93510fe0ff43ce764311bfbb61fc738b9f34852b10e3173e2f55b0ee94e2d48"
    end
    on_arm do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe6a7979ae0ee543db737b0dcef3f390a6c20a539ecfd334ae46b15af6473f32"
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
