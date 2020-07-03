class Binq < Formula
  Version = '0.4.0'
  version Version

  if OS.mac?
    Archive = "binq_#{Version}_darwin_amd64.zip"
    sha256 "e138903f12218c1f319eb17e2ddcbca0fb06cd011f1bd05dc4ca2fcdeb065ae8"
  elsif OS.linux?
    Archive = "binq_#{Version}_linux_amd64.zip"
    sha256 "40694e1ad110cd6c1c17d07ec5fe0a057684918ee4b2050723e93a7ee07056e7"
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
