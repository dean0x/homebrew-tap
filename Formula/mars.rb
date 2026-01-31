class Mars < Formula
  desc "Multi-repo workspace manager for Git repositories"
  homepage "https://github.com/dean0x/mars"
  url "https://github.com/dean0x/mars/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "746a5d070c8ad87c9c6aab45e9e725210bf6ef5396a65fba60b1f0a6eade2881"
  license "MIT"

  def install
    bin.install "dist/mars" => "mars"
  end

  test do
    system "#{bin}/mars", "--version"
  end
end
