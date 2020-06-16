class Shelp < Formula
  Version = '0.5.1'

  if OS.mac?
    Binary = "shelp_#{Version}_darwin_x86_64"
    sha256 "70207befa0f7ad8f5366a5caa5ac4c76f11420ab3a2e01b5a1cd83281904b0b2"
  elsif OS.linux?
    Binary = "shelp_#{Version}_linux_x86_64"
    sha256 "39f1bc19e6bad4c22a37b67565f40c8b58a1720e845c988a5b31a53973a8ef3a"
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
