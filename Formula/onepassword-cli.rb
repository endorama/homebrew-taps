LATEST_RELEASE="v1.8.0".freeze
LATEST_RELEASE_SHA256="4f257af9eeeca5d40d099e76e30322afbb44b0d34c052ec4fe3378deadefee68".freeze

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
