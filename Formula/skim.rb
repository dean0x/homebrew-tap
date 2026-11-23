class Skim < Formula
  desc "Smart code reader - streaming code transformation for AI agents"
  homepage "https://github.com/dean0x/skim"
  version "3.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-aarch64-apple-darwin.tar.gz"
      sha256 "31fd20b3abd3d6f2da5863f124852fe9858a0aa1e4df7c15dbc42c2b9c08785d"
    end
    on_intel do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-x86_64-apple-darwin.tar.gz"
      sha256 "b5b70c2251bcd06d90bf06ad0f456e2f0ab76d29aecafe6e1b87867817e4a223"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59b3120907329107cbd421e7549ed73e614482ee6dc29efa5071b0e97de64b0e"
    end
    on_arm do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "338367ab1b95d9bec6b75b6560bb7c450273d5c7921e509949cf240b1a57eb6e"
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
