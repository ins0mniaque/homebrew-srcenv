class Srcenv < Formula
  desc "Cross-shell tool for sourcing POSIX compliant .env scripts"
  homepage "https://github.com/ins0mniaque/srcenv"
  url "https://github.com/ins0mniaque/srcenv/archive/refs/tags/v1.3.10.tar.gz"
  version "1.3.10"
  sha256 "76ea02ef92c0a5421bd1096b34b4c5d1dc800d5697e4e25c4c0bf9de31ca5d95"
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
