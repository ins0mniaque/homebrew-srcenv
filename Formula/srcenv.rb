class Srcenv < Formula
  desc "A cross-shell tool for sourcing POSIX compliant .env scripts."
  homepage "https://github.com/ins0mniaque/srcenv"
  url "https://github.com/ins0mniaque/srcenv/archive/main.zip"
  sha256 "f718bf77106891e11e96067ef37d0b389d428ca32094488d965627c166f793ad"
  license "MIT"
  version "1.0.0"

  depends_on "jq"

  def install
    bin.install "srcenv"
    man1.install "srcenv.1"
  end

  test do
    system "#{bin}/srcenv --version"
    expected_version = "srcenv 1.0.0"
    actual_version = shell_output("#{bin}/srcenv --version").strip
    assert_match expected_version, actual_version
  end
end