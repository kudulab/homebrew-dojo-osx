class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  version "0.10.4"
  bottle :unneeded

if OS.mac?
    url "https://github.com/kudulab/dojo/releases/download/0.10.4/dojo_darwin_amd64"
    sha256 "a67b86943ef448cbab93201846af8cea31a1e57513e1366899cab20c66748a8c"
  def install
    bin.install "dojo_darwin_amd64"
    mv bin/"dojo_darwin_amd64", bin/"dojo"
  end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kudulab/dojo/releases/download/0.10.4/dojo_linux_amd64"
      sha256 "86a673dc2515e73d60be15871d2e02b65595becd2d04a80ae547f6eec1cbae09"
  def install
    bin.install "dojo_linux_amd64"
    mv bin/"dojo_linux_amd64", bin/"dojo"
  end
    end
  end
end
