# taken from https://github.com/go-task/homebrew-tap/blob/master/Formula/go-task.rb
# and adapted with Linux support
LATEST_RELEASE="v2.3.0".freeze
LATEST_RELEASE_SHA256="734507e36ab6c03fa3a10560d1fc7d4d5d943650acbd4635b35a40bd05821b13".freeze

class GoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://github.com/go-task/task"
  url "https://github.com/go-task/task/releases/download/#{LATEST_RELEASE}/task_linux_amd64.tar.gz"
  version LATEST_RELEASE[1,LATEST_RELEASE.length]
  sha256 LATEST_RELEASE_SHA256

    def install
    bin.install "task"
  end

  test do
    system "#{bin}/task", "--help"
  end
end
