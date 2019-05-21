# taken from https://github.com/go-task/homebrew-tap/blob/master/Formula/go-task.rb
# and adapted with Linux support
LATEST_RELEASE="v2.5.2".freeze
LATEST_RELEASE_SHA256="d97949bcd590eb01f77f8b10fdce8f5add40864d7a9f7a93bf3916198360734f".freeze

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
