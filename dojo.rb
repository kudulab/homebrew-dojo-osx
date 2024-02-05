class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  version "0.13.0"

if OS.mac?
    url "https://github.com/kudulab/dojo/releases/download/0.13.0/dojo_darwin_amd64"
    sha256 "015d321b3e783bf4bddf3bc9680eb20aba50f07e6694303f1d84bd586eb9235c"
  def install
    bin.install "dojo_darwin_amd64"
    mv bin/"dojo_darwin_amd64", bin/"dojo"
  end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kudulab/dojo/releases/download/0.13.0/dojo_linux_amd64"
      sha256 "874c9d8b3e55cfd05e56ea4f215c0eb5951e4b45f6dc7f2bbc8fea817894d910"
  def install
    bin.install "dojo_linux_amd64"
    mv bin/"dojo_linux_amd64", bin/"dojo"
  end
    end
  end
end
