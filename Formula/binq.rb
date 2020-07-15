class Binq < Formula
  Version = '0.8.0'
  version Version

  if OS.mac?
    Archive = "binq_#{Version}_darwin_amd64.zip"
    sha256 "faab6ac95d1a29cd6387e5219e8289fdb236801950f3402b6184e4c55428f1cf"
  elsif OS.linux?
    Archive = "binq_#{Version}_linux_amd64.zip"
    sha256 "3596e9a1a65adc644cdb8e31db324d72fd2a4a3240aab04c48dcf1bb4d6a39b7"
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
