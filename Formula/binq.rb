class Binq < Formula
  Version = '0.6.1'
  version Version

  if OS.mac?
    Archive = "binq_#{Version}_darwin_amd64.zip"
    sha256 "ec67b94392a545deb80ea45f935c72fa3e6711eb55bd1459e6008789ae4bde14"
  elsif OS.linux?
    Archive = "binq_#{Version}_linux_amd64.zip"
    sha256 "789b8dc86cf49f5f5d0eb6f8c5766c126664378ff5fbfe7c328b37af9956186b"
  end

  url "https://github.com/progrhyme/binq/releases/download/v#{Version}/#{Archive}"
  desc 'Download and Extract Binary or Archive Items'
  homepage 'https://github.com/progrhyme/binq'
  head 'https://github.com/progrhyme/binq.git'

  def install
    bin.install 'binq'
  end

  test do
    system "#{bin}/binq", 'version'
  end
end
