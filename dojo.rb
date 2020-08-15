class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  url "https://github.com/kudulab/dojo/releases/download/0.9.0/dojo_darwin_amd64"
  sha256 "ec82c9015ae3b7edb4a4dc6fa6330ccf0bdb602feba4461e24721218b282de30"
  version "0.9.0"

  bottle :unneeded

  def install
    bin.install "dojo_darwin_amd64"
    mv bin/"dojo_darwin_amd64", bin/"dojo"
  end
end
