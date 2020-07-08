LATEST_RELEASE = "v1.2.2".freeze
LATEST_VERSION = LATEST_RELEASE.gsub(/^v/, "").freeze
LATEST_VERSION_SHA256 = "c26a627c08027052617f4791d7c807bcb52672118ac21b1b5449367f63487905".freeze

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
