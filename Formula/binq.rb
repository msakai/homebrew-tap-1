class Binq < Formula
  Version = '0.6.0'
  version Version

  if OS.mac?
    Archive = "binq_#{Version}_darwin_amd64.zip"
    sha256 "c6250278a25714d8022c076442bc8274a3389677f8a5afbb70c197750db020a2"
  elsif OS.linux?
    Archive = "binq_#{Version}_linux_amd64.zip"
    sha256 "b6315a2ab0748e732aa9ed7c754c65fea92f791195a09eea600437a3e4e2d1d0"
  end

  url "https://github.com/progrhyme/binq/releases/download/v#{Version}/#{Archive}"
  desc 'Git-based package manager for shell scripts written in Go'
  homepage 'https://github.com/progrhyme/binq'
  head 'https://github.com/progrhyme/binq.git'

  def install
    bin.install 'binq'
  end

  test do
    system "#{bin}/binq", 'version'
  end
end
