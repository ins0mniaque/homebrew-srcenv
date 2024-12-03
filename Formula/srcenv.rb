class Srcenv < Formula
  desc "Cross-shell tool for sourcing POSIX compliant .env scripts"
  homepage "https://github.com/ins0mniaque/srcenv"
  url "https://github.com/ins0mniaque/srcenv/archive/refs/tags/v1.4.7.tar.gz"
  version "1.4.7"
  sha256 "4206b88c239be72a2bb23a6bc545553aa42fa202d3aaa0c9172e57915083f53b"
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
