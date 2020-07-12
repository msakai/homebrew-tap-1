class BinqGh < Formula
  Version = '0.2.0'
  version Version

  if OS.mac?
    Archive = "binq-gh_#{Version}_darwin_amd64.zip"
    sha256 "7832f95f597d4caa3eccb103dfbd76c9c65d7c4e01519da8868323e41ba6a200"
  elsif OS.linux?
    Archive = "binq-gh_#{Version}_linux_amd64.zip"
    sha256 "26d2fa1e2384f8eb0412a66e4235d061670dec8c50df11cddea00a8271b92805"
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
