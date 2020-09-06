class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  version "0.10.0"
  bottle :unneeded

if OS.mac?
    url "https://github.com/kudulab/dojo/releases/download/0.10.0/dojo_darwin_amd64"
    sha256 "6a6318442e6fbfc24fa0d942402767dbeef2e365870b3ecbdc5bd2c71e544756"
  def install
    bin.install "dojo_darwin_amd64"
    mv bin/"dojo_darwin_amd64", bin/"dojo"
  end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kudulab/dojo/releases/download/0.10.0/dojo_linux_amd64"
      sha256 "838fc9cae3af595b181f66458ef66006b6ea0115aed964889924ad54c9f263e9"
  def install
    bin.install "dojo_linux_amd64"
    mv bin/"dojo_linux_amd64", bin/"dojo"
  end
    end
  end
end
