class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  version "0.10.2"
  bottle :unneeded

if OS.mac?
    url "https://github.com/kudulab/dojo/releases/download/0.10.2/dojo_darwin_amd64"
    sha256 "d765994d070c39dc0e28b46425488769a27f0c7dd5316188c0479280baa85326"
  def install
    bin.install "dojo_darwin_amd64"
    mv bin/"dojo_darwin_amd64", bin/"dojo"
  end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kudulab/dojo/releases/download/0.10.2/dojo_linux_amd64"
      sha256 "8a85b2804006e835fa11af8ee53e07cff3ce213b3fd57e50cda286e184433828"
  def install
    bin.install "dojo_linux_amd64"
    mv bin/"dojo_linux_amd64", bin/"dojo"
  end
    end
  end
end
