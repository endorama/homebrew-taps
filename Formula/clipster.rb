LATEST_RELEASE = "2.0.2".freeze
LATEST_VERSION = LATEST_RELEASE.gsub(/^v/, "").freeze
LATEST_VERSION_SHA256 = "4e7e3f819110e5ca45b8c53862621c43e41686aac8bcef2fe1687096e5ed58ba".freeze

class Clipster < Formula
  desc "python clipboard manager"
  homepage "https://github.com/mrichar1/clipster"
  url "https://github.com/mrichar1/clipster/archive/#{LATEST_VERSION}.tar.gz"
  version LATEST_VERSION
  sha256 LATEST_VERSION_SHA256

  depends_on "python"

  def install
    bin.install "clipster"
  end

  test do
    system "#{bin}/clipster" "--help"
  end
end
