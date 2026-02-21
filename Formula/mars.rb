class Mars < Formula
  desc "Multi-repo workspace manager for Git repositories"
  homepage "https://github.com/dean0x/mars"
  url "https://github.com/dean0x/mars/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "61e7d72bd2787a8a1da43bb3db6744fbb3ad39a87834a53b81bf7d286e6e7ee7"
  license "MIT"

  def install
    bin.install "dist/mars" => "mars"
  end

  test do
    system "#{bin}/mars", "--version"
  end
end
