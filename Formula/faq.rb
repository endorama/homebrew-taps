require "formula"

class Faq < Formula
  desc "Format Agnostic jQ"
  homepage "https://github.com/jzelinskie/faq"
  url "https://github.com/jzelinskie/faq/releases/download/0.0.6/faq-linux-amd64"
  sha256 "53360a0d22b0608d5e29f8e84450f2fdc94573246fb552896afedbf8f1687981"
  version "0.0.6"

  depends_on "jq"

  def install
    system "mv", "faq-linux-amd64", "faq"
    bin.install "faq"
  end

  test do
    system "#{bin}/faq", "--version"
  end
end
