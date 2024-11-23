class Srcenv < Formula
  desc "A cross-shell tool for sourcing POSIX compliant .env scripts."
  homepage "https://github.com/ins0mniaque/srcenv"
  url "https://github.com/ins0mniaque/srcenv/archive/refs/tags/v1.0.1.zip"
  sha256 "3a277ef46d6655a7e743720531c585b765aae432d37a1bd84f38d60e79ae94b8"
  license "MIT"
  version "1.0.1"

  depends_on "jq"

  def install
    bin.install "srcenv"
    man1.install "srcenv.1"
  end

  test do
    expected_version = "srcenv 1.0.1"
    actual_version = shell_output("#{bin}/srcenv --version").strip
    assert_match expected_version, actual_version
  end
end