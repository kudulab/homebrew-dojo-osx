class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  version "0.13.2"

if OS.mac?
    url "https://github.com/kudulab/dojo/releases/download/0.13.2/dojo_darwin_amd64"
    sha256 "5fc1f5b5b85fad7638c1cfed6e1ea520ae5f708fd84a280c807da60f8e424ba7"
  def install
    bin.install "dojo_darwin_amd64"
    mv bin/"dojo_darwin_amd64", bin/"dojo"
  end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kudulab/dojo/releases/download/0.13.2/dojo_linux_amd64"
      sha256 "d47cc8b11bf28344b16a1254ef7df2eb05e9b385940f037b65635f41387e2228"
  def install
    bin.install "dojo_linux_amd64"
    mv bin/"dojo_linux_amd64", bin/"dojo"
  end
    end
  end
end
