LATEST_RELEASE = "v1.2.1".freeze
LATEST_VERSION = LATEST_RELEASE.gsub(/^v/, "").freeze
LATEST_VERSION_SHA256 = "36f24d824b3440ae76a314bae95048e2c79e54912254da82a9f00c353dd4829d".freeze

class Gotunl < Formula
  desc "Command line client for Pritunl"
  homepage "https://github.com/cghdev/gotunl"
  url "https://github.com/cghdev/gotunl/releases/download/#{LATEST_VERSION}/gotunl-linux-amd64.zip"
  version LATEST_RELEASE
  sha256 LATEST_VERSION_SHA256

  def install
    prefix.install "gotunl"
    bin.install_symlink "#{prefix}/gotunl" => "gotunl"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test gotunl-vpn`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "gotunl -v"
  end
end
