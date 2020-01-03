class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  url "https://github.com/kudulab/dojo/releases/download/0.8.0/dojo_darwin_amd64"
  sha256 "64b9f38923e2e548f3a9a43e7b934aa32aabda94d1910234319b8f3875f0eee9"
  version "0.8.0"

  bottle :unneeded

  def install
    bin.install "dojo_darwin_amd64"
    mv bin/"dojo_darwin_amd64", bin/"dojo"
  end
end
