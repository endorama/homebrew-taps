VERSION="1.0.0"


class GotunlVpn < Formula
  desc "Command line client for Pritunl"
  homepage "https://github.com/cghdev/gotunl-vpn"
  url "https://github.com/cghdev/gotunl-vpn/releases/download/1.0.0/gotunl_1.0.0-linux-x64.zip"
  sha256 "ff29f6f2836c180adb2e20d9afe0b4ef4e20affb265f9272c3d631c7900804dc"

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
