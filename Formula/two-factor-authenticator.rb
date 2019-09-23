LATEST_RELEASE="v0.5.0".freeze
LATEST_RELEASE_SHA256="734507e36ab6c03fa3a10560d1fc7d4d5d943650acbd4635b35a40bd05821b13".freeze

class TwoFactorAuthenticator < Formula
  desc ""
  homepage "https://github.com/go-task/task"
  url "https://github.com/endorama/two-factor-authenticator/releases/download/#{LATEST_RELEASE}/two-factor-authenticator-#{LATEST_RELEASE}-linux-amd64"
  version LATEST_RELEASE[1,LATEST_RELEASE.length]
  sha256 LATEST_RELEASE_SHA256

  def install
    bin.install "two-factor-authenticator"
  end

  test do
    system "#{bin}/two-factor-authenticator", "--help"
  end
end
