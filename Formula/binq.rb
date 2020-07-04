class Binq < Formula
  Version = '0.5.0'
  version Version

  if OS.mac?
    Archive = "binq_#{Version}_darwin_amd64.zip"
    sha256 "fe5528f8f5ac58bd1698b5ff91ea71269fbe077bc8d9b48cc588a644d26446bd"
  elsif OS.linux?
    Archive = "binq_#{Version}_linux_amd64.zip"
    sha256 "3a4379e2dcf5b51f063ce6ac44eb4855b7994929ef6cf1a9763507fc6cc6cb7a"
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
