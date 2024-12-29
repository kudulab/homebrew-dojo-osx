class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  version "0.13.3"

if OS.mac?
    url "https://github.com/kudulab/dojo/releases/download/0.13.3/dojo_darwin_amd64"
    sha256 "2838a35c137cafa6b8c0235b670425dc54b70b6caa6433ed6a9718c0e66cef93"
  def install
    bin.install "dojo_darwin_amd64"
    mv bin/"dojo_darwin_amd64", bin/"dojo"
  end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kudulab/dojo/releases/download/0.13.3/dojo_linux_amd64"
      sha256 "702c9d5f66c4b87f4c950794794fa9fd7a1f1cefa045841805ccb2b8250d5364"
  def install
    bin.install "dojo_linux_amd64"
    mv bin/"dojo_linux_amd64", bin/"dojo"
  end
    end
  end
end
