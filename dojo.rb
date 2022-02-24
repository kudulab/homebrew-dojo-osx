class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  version "0.10.5"

if OS.mac?
    url "https://github.com/kudulab/dojo/releases/download/0.10.5/dojo_darwin_amd64"
    sha256 "b51a7d812f2c8e7f864f63475925f41c4bdf47be134a16dcc4f2a4d776b2460f"
  def install
    bin.install "dojo_darwin_amd64"
    mv bin/"dojo_darwin_amd64", bin/"dojo"
  end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kudulab/dojo/releases/download/0.10.5/dojo_linux_amd64"
      sha256 "aad5a473646c1196a593ba668261c2dffbad20829d73eb135d8ded70b5fa2875"
  def install
    bin.install "dojo_linux_amd64"
    mv bin/"dojo_linux_amd64", bin/"dojo"
  end
    end
  end
end
