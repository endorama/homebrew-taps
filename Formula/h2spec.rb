require 'rbconfig'
VERSION="2.5.0"

class H2spec < Formula
  desc "A conformance testing tool for HTTP/2 implementation"
  homepage "https://github.com/summerwind/h2spec/"
  version VERSION

  case RbConfig::CONFIG['host_os']
  when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
    :windows
  when /darwin|mac os/
    url "https://github.com/summerwind/h2spec/releases/download/v#{VERSION}/h2spec_darwin_amd64.tar.gz"
    sha256 "0323007496235726b41ccab0da9f16ebc8ae2029d034a957c36e31f531908a5e"
  when /linux/
    url "https://github.com/summerwind/h2spec/releases/download/v#{VERSION}/h2spec_linux_amd64.tar.gz"
    sha256 "8f5012413a16eb23c36d8a5ddb0c3c9c10c943cb2d65d22b46869ff21dca48fd"
  when /solaris|bsd/
    :unix
  else
    :unknown
  end

  def install
    bin.install "h2spec"
  end

  test do
    system "h2spec --dryrun"
  end
end
