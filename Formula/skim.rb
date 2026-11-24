class Skim < Formula
  desc "Smart code reader - streaming code transformation for AI agents"
  homepage "https://github.com/dean0x/skim"
  version "3.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-aarch64-apple-darwin.tar.gz"
      sha256 "31582b736c4ec92dfb5a490b30921508fcfa6d8b85341256714cb2ad0f09911a"
    end
    on_intel do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-x86_64-apple-darwin.tar.gz"
      sha256 "7276306b19c9baaa1c974424b3a2774e3dab397edeb846d7b613fd1496d305f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "adc56ca1418ec69e74045baaefcbfe31f2b237e774c98efa515f358b97ac5b8f"
    end
    on_arm do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "da70fdb10c9a3536dae1865b58aeaa7ed86b0377a0367f4fbecb3c4838f64919"
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
