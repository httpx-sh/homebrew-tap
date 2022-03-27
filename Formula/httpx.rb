class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.22.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.22.0/httpx-0.22.0-x86_64-apple-darwin.tar'
      sha256 '0c59540629f0cd48aac4f15fa67969769d29ffcebc7610743efee47f019c56c5'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.22.0/httpx-0.22.0-x86_64-apple-darwin.tar'
      sha256 '0c59540629f0cd48aac4f15fa67969769d29ffcebc7610743efee47f019c56c5'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
