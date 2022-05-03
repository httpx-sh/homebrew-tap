class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.31.1'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.31.1/httpx-0.31.1-x86_64-apple-darwin.tar'
      sha256 '5d13976339954c5a8326e572b6300d04f27e86cb057f57a17eb7219ec896dcd8'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.31.1/httpx-0.31.1-x86_64-apple-darwin.tar'
      sha256 '5d13976339954c5a8326e572b6300d04f27e86cb057f57a17eb7219ec896dcd8'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
