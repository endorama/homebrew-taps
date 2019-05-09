class Mnemonicode < Formula
  desc "Updated fork of mnemonic"
  homepage "https://github.com/singpolyma/mnemonicode"
  url "https://github.com/singpolyma/mnemonicode/archive/8b9231f5499d58f8ec3d5ba7419a4f6a743eef52.tar.gz"
  version "20180726.8b9231f"
  sha256 "c5b00fd82843b8a80b73396cbeebc47346dc7e8f800ee543a3284715920a41a7"

  head do
    url "https://github.com/singpolyma/mnemonicode.git"
  end

  depends_on "make" => :build

  def install
    system "make"
    bin.install "mnencode"
    bin.install "mndecode"
  end

  test do
    system "cat /dev/urandom | ./mnencode"
  end
end
