class Srcenv < Formula
  desc "A cross-shell tool for sourcing POSIX compliant .env scripts."
  homepage "https://github.com/ins0mniaque/srcenv"
  url "https://github.com/ins0mniaque/srcenv/archive/refs/tags/v1.2.0.zip"
  sha256 "9acd65e69f5c01fbb29d2b2608b763645e294e5d20aa92348fd6d3eaff735fa1"
  license "MIT"
  version "1.2.0"

  depends_on "jq"

  def install
    bin.install "srcenv"
    man1.install "srcenv.1"
  end

  test do
    expected_version = "srcenv 1.2.0"
    actual_version = shell_output("#{bin}/srcenv --version").strip
    assert_match expected_version, actual_version
  end
end