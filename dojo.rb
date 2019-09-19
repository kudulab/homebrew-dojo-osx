class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  url "https://github.com/kudulab/dojo/releases/download/0.6.1/dojo_darwin_amd64"
  sha256 "6d9ba92f3b791d527f034c1a7dba452355ffd78b36769e5c4976e423b167bd99"

  bottle :unneeded

  def install
    bin.install "dojo"
  end
end
