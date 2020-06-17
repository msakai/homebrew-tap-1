class Shelp < Formula
  Version = '0.5.2'
  version Version

  if OS.mac?
    Binary = "shelp_#{Version}_darwin_x86_64"
    sha256 "3ebe49bd00218fe86a9a2c72063af3b52a5cf53532bbf0016b342626ebab9fc2"
  elsif OS.linux?
    Binary = "shelp_#{Version}_linux_x86_64"
    sha256 "ab674789e705dc67eb3184957b866c47f9cf59f1f10f83092cf0407998f274ec"
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
