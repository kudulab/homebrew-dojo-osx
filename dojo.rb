class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  url "https://github.com/kudulab/dojo/releases/download/0.7.0/dojo_darwin_amd64"
  sha256 "76aebcbda4cd24cad484fa0893d1e7c115743556676f06defc3851d0a423b512"
  version "0.7.0"

  bottle :unneeded

  def install
    bin.install "dojo_darwin_amd64"
    mv bin/"dojo_darwin_amd64", bin/"dojo"
  end
end
