class Skim < Formula
  desc "Smart code reader - streaming code transformation for AI agents"
  homepage "https://github.com/dean0x/skim"
  version "2.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-aarch64-apple-darwin.tar.gz"
      sha256 "2045dd2d143e0a96a87752caf6a68405ced0a816fbda70c35f890dcabc8621c8"
    end
    on_intel do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-x86_64-apple-darwin.tar.gz"
      sha256 "390639f103df05f2c8617b3ef7f331997ad6d7de8618b8eb205384bf7acbb0fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7deddfe09901ae32de4d795c43713ad99e115686a6393317ef6c43c88e209bc"
    end
    on_arm do
      url "https://github.com/dean0x/skim/releases/download/v#{version}/skim-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f8cc119b7d8b7bb3391d4e4887e67246ddd3f532c47c188f95d9756afdb3150d"
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
