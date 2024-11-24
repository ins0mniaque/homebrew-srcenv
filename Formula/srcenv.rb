class Srcenv < Formula
  desc "A cross-shell tool for sourcing POSIX compliant .env scripts."
  homepage "https://github.com/ins0mniaque/srcenv"
  url "https://github.com/ins0mniaque/srcenv/archive/refs/tags/v1.2.2.zip"
  sha256 "657c5be1b0339c6468c1ce2c63dfad29449b7480e534f149f1a9db4f38a06e0b"
  license "MIT"
  version "1.2.2"

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