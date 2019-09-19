class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  url "https://github.com/kudulab/dojo/releases/download/0.6.2/dojo_darwin_amd64"
  sha256 "f54c578f65f94ff803bfb651c13194b0e22710732c5188d4c3eac4ee7bcaef8e"

  bottle :unneeded

  def install
    bin.install "dojo_darwin_amd64"
    mv bin/"dojo_darwin_amd64", bin/"dojo"
  end
end
