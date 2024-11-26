class Srcenv < Formula
  desc "Cross-shell tool for sourcing POSIX compliant .env scripts"
  homepage "https://github.com/ins0mniaque/srcenv"
  url "https://github.com/ins0mniaque/srcenv/archive/refs/tags/v1.2.11.tar.gz"
  version "1.2.11"
  sha256 "adef985f336db34cdfc78f3aabf847ae3d455bea1097ca4bcd6fffc049643788"
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
