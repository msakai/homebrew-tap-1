class Shelp < Formula
  Version = '0.6.0'
  version Version

  if OS.mac?
    Binary = "shelp_#{Version}_darwin_x86_64"
    sha256 "3fc3ca05cf7e54ab25fd7ee44b94e2614ca17f2dfd61b837134592030be3418d"
  elsif OS.linux?
    Binary = "shelp_#{Version}_linux_x86_64"
    sha256 "018ed352010c09eb262d0195183cdf7f3dd12f49eadf76ef5c5893299002a7d7"
  end

  url "https://github.com/progrhyme/shelp/releases/download/v#{Version}/#{Binary}"
  desc 'Git-based package manager for shell scripts written in Go'
  homepage 'https://github.com/progrhyme/shelp'
  head 'https://github.com/progrhyme/shelp.git'

  def install
    bin.install Binary => 'shelp'
  end

  test do
    system "#{bin}/shelp", '--version'
  end
end
