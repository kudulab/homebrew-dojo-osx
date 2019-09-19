class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  url "https://github.com/kudulab/dojo/releases/download/0.6.3/dojo_darwin_amd64"
  sha256 "a0ad6623270e076c6a8b45321050c70f9d415c80bb23ca0452fc072458c82bd8"
  version "0.6.3"

  bottle :unneeded

  def install
    bin.install "dojo_darwin_amd64"
    mv bin/"dojo_darwin_amd64", bin/"dojo"
  end
end
