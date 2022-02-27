class Dojo < Formula
  desc "Containerize your development and operations environment"
  homepage "https://github.com/kudulab/dojo"
  version "0.11.0"

if OS.mac?
    url "https://github.com/kudulab/dojo/releases/download/0.11.0/dojo_darwin_amd64"
    sha256 "b97c656f2405fb41d05a4fda57f5a65d48f3043b1da22cd0f0106e52e4940b6b"
  def install
    bin.install "dojo_darwin_amd64"
    mv bin/"dojo_darwin_amd64", bin/"dojo"
  end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kudulab/dojo/releases/download/0.11.0/dojo_linux_amd64"
      sha256 "c1c0f4b715b0b02700d14b572ec577c36a7075463b11d7168e605656ef3dadaf"
  def install
    bin.install "dojo_linux_amd64"
    mv bin/"dojo_linux_amd64", bin/"dojo"
  end
    end
  end
end
