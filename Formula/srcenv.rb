class Srcenv < Formula
  desc "Cross-shell tool for sourcing POSIX compliant .env scripts"
  homepage "https://github.com/ins0mniaque/srcenv"
  url "https://github.com/ins0mniaque/srcenv/archive/refs/tags/v1.3.1.tar.gz"
  version "1.3.1"
  sha256 "688ca240105e729c04c210ffb1c960a00657d1d07eb3997bd91c91e050899104"
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
