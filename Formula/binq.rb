class Binq < Formula
  Version = '0.6.3'
  version Version

  if OS.mac?
    Archive = "binq_#{Version}_darwin_amd64.zip"
    sha256 "b5566a9f5c35b88730d13a288a834081c92d921826824e8b85ae7154fefb446c"
  elsif OS.linux?
    Archive = "binq_#{Version}_linux_amd64.zip"
    sha256 "a9a1fef48129be933c3d68ffb3761f7bd7373be3ee1152805f1a842522183da9"
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
