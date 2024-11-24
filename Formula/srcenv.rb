class Srcenv < Formula
  desc "A cross-shell tool for sourcing POSIX compliant .env scripts."
  homepage "https://github.com/ins0mniaque/srcenv"
  url "https://github.com/ins0mniaque/srcenv/archive/refs/tags/v1.1.1.zip"
  sha256 "f3732b3cab130100e4fc5498db264e50517700f92264886eed83fe07d27f1f7c"
  license "MIT"
  version "1.1.1"

  depends_on "jq"

  def install
    bin.install "srcenv"
    man1.install "srcenv.1"
  end

  test do
    expected_version = "srcenv 1.1.1"
    actual_version = shell_output("#{bin}/srcenv --version").strip
    assert_match expected_version, actual_version
  end
end