class Binq < Formula
  Version = '0.8.1'
  version Version

  if OS.mac?
    Archive = "binq_#{Version}_darwin_amd64.zip"
    sha256 "faf15abdecacbd55006ddb9af1bb3344fcb0c420f648ca8a1c73c3b3ac547f9d"
  elsif OS.linux?
    Archive = "binq_#{Version}_linux_amd64.zip"
    sha256 "26a1bab5e21e95037c7e044c9193cee92d1af3fd4dcda8e3207570f48748b490"
  end

  url "https://github.com/binqry/binq/releases/download/v#{Version}/#{Archive}"
  desc 'A light-weight software installer written in Golang'
  homepage 'https://binqry.github.io/'
  head 'https://github.com/binqry/binq.git'

  def install
    bin.install 'binq'
  end

  test do
    system "#{bin}/binq", 'version'
  end
end
