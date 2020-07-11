class BinqGh < Formula
  Version = '0.1.1'
  version Version

  if OS.mac?
    Archive = "binq-gh_#{Version}_darwin_amd64.zip"
    sha256 "d3f974fa56a9f935933e872014bfd1e9a4d0fbe6954bd64d49ff947f2bed490a"
  elsif OS.linux?
    Archive = "binq-gh_#{Version}_linux_amd64.zip"
    sha256 "b15fe65dd293b50de98d18bb38aab883f75a624bd5ce2316e30e63435694347c"
  end

  url "https://github.com/progrhyme/binq-gh/releases/download/v#{Version}/#{Archive}"
  desc 'Wrapper CLI for binq with GitHub features'
  homepage 'https://github.com/progrhyme/binq-gh'
  head 'https://github.com/progrhyme/binq-gh.git'

  def install
    bin.install 'binq-gh'
  end

  test do
    system "#{bin}/binq-gh", '--version'
  end
end
