class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  version "0.10.1"
  bottle :unneeded

if OS.mac?
    url "https://github.com/kudulab/dojo/releases/download/0.10.1/dojo_darwin_amd64"
    sha256 "fbe64b2ac71bab40c6d7b06cd42ed100cf3ddb1f23d240f5acc84d546797cf81"
  def install
    bin.install "dojo_darwin_amd64"
    mv bin/"dojo_darwin_amd64", bin/"dojo"
  end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kudulab/dojo/releases/download/0.10.1/dojo_linux_amd64"
      sha256 "813dd25448e9a3beeb195edcaf9798d16f957bf7ffbc05930e3bff2a85daf3aa"
  def install
    bin.install "dojo_linux_amd64"
    mv bin/"dojo_linux_amd64", bin/"dojo"
  end
    end
  end
end
