LATEST_RELEASE="v0.6.2".freeze
LATEST_RELEASE_SHA256="88b59ebd35c4f3b03bdd7093ac6392105928f56505a8423a7094b8ce2adf4c45".freeze

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
