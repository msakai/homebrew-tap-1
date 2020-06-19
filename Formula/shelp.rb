class Shelp < Formula
  Version = '0.5.3'
  version Version

  if OS.mac?
    Binary = "shelp_#{Version}_darwin_x86_64"
    sha256 "dffb6ccb90395d2e9d90b3dc7f80736a30d6b5be42c99e99b6b3df87e965e30c"
  elsif OS.linux?
    Binary = "shelp_#{Version}_linux_x86_64"
    sha256 "7f35438588860e8f372ce4b3dbed96abc848ec35cb4a7826df49f033d595277d"
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
