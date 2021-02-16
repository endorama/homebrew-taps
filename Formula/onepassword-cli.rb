LATEST_RELEASE="v1.8.0".freeze
LATEST_RELEASE_SHA256="470c9696a07c69dadf8bb386084dff0706830e9bdced4c4c0e9cdc92e1cbd5e5".freeze

class OnepasswordCli < Formula
  desc "Go ahead. Forget your passwords."
  homepage "https://1password.com"
  url "https://cache.agilebits.com/dist/1P/op/pkg/#{LATEST_RELEASE}/op_linux_amd64_#{LATEST_RELEASE}.zip"
  version LATEST_RELEASE[1,LATEST_RELEASE.length]
  sha256 LATEST_RELEASE_SHA256

  def install
    system "gpg --receive-keys 3FEF9748469ADBE15DA7CA80AC2D62742012EA22"
		system "gpg --verify op.sig op"
    bin.install "op"
  end

  test do
    system "#{bin}/op", "--help"
  end
end
