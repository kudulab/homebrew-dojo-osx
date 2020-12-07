class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  version "0.10.3"
  bottle :unneeded

if OS.mac?
    url "https://github.com/kudulab/dojo/releases/download/0.10.3/dojo_darwin_amd64"
    sha256 "8b4082cf9a0ede5e92a04bf59fc6eec7e4233e62a89c068d9a2865b9de9fe089"
  def install
    bin.install "dojo_darwin_amd64"
    mv bin/"dojo_darwin_amd64", bin/"dojo"
  end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kudulab/dojo/releases/download/0.10.3/dojo_linux_amd64"
      sha256 "720be2d04e8ff18b3c13d461d061292d7ad9cea118c9b83bb6959d999536aa03"
  def install
    bin.install "dojo_linux_amd64"
    mv bin/"dojo_linux_amd64", bin/"dojo"
  end
    end
  end
end
