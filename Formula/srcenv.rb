class Srcenv < Formula
  desc "Cross-shell tool for sourcing POSIX compliant .env scripts"
  homepage "https://github.com/ins0mniaque/srcenv"
  url "https://github.com/ins0mniaque/srcenv/archive/refs/tags/v1.3.8.tar.gz"
  version "1.3.8"
  sha256 "cd3d3f8fcbda65b5b477c55e93fab35bf5beca86fb0fa0652dd123262f14d512"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "srcenv"
    man1.install "srcenv.1"
  end

  test do
    expected_version = "srcenv #{version}"
    actual_version = shell_output("#{bin}/srcenv --version").strip
    assert_match expected_version, actual_version
  end
end
