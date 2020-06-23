LATEST_RELEASE="v1.1.1".freeze
LATEST_RELEASE_SHA256="b612b11ef0c21a62c71f2ce4a21c6621784837ce6f59ca264eb377efcddc4f8e".freeze

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
