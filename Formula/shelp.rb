class Shelp < Formula
  Version = '0.5.0'

  if OS.mac?
    Binary = "shelp_#{Version}_darwin_x86_64"
    sha256 "18665382a6519b59741740cd9edbcc667be3bf99d06fd7d914274a30d5cba889"
  elsif OS.linux?
    Binary = "shelp_#{Version}_linux_x86_64"
    sha256 "7a8797cbd3af61d0cb83b2ee6f8720a208c05e653871d55fee34b837c8f1e8bf"
  end

  url "https://github.com/progrhyme/shelp/releases/download/v#{Version}/#{Binary}"
  desc "Git-based package manager for shell scripts written in Go"
  homepage "https://github.com/progrhyme/shelp"
  head "https://github.com/progrhyme/shelp.git"

  def install
    bin.install Binary => 'shelp'
  end

  test do
    system "#{bin}/shelp", '--version'
  end
end
