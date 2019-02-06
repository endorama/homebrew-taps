LATEST_RELEASE="v0.6.0".freeze
LATEST_RELEASE_SHA256="b31109ee8715afa32cdb6d99915532e4cfae4bc6efac77bfbbf9c0072e59d7a6".freeze
LATEST_VERSION=LATEST_RELEASE[1, LATEST_RELEASE.length].freeze

class Dive < Formula
  desc "Tool for exploring each layer in a docker image"
  homepage "https://github.com/wagoodman/dive"
  url "https://github.com/wagoodman/dive/releases/download/#{LATEST_RELEASE}/dive_#{LATEST_VERSION}_linux_amd64.tar.gz"
  version LATEST_VERSION
  sha256 LATEST_RELEASE_SHA256

  def install
    bin.install "dive"
  end

  test do
    system "#{bin}/dive", "--help"
  end
end
