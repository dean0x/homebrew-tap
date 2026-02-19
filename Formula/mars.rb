class Mars < Formula
  desc "Multi Agentic Repo workspace manager for Git repositories"
  homepage "https://github.com/dean0x/mars"
  url "https://github.com/dean0x/mars/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "382c85ae2b8b4bf7aaa1d134d835cc8c02f736e4ff2f9619882301925d98a910"
  license "MIT"

  def install
    bin.install "dist/mars" => "mars"
  end

  test do
    system "#{bin}/mars", "--version"
  end
end
