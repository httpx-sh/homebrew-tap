class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.31.1'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.32.0/httpx-0.32.0-x86_64-apple-darwin.tar'
      sha256 'cb696e5a7e86eb2117be6bd21c8b31d53e5090159b35573b0a804db00cabdfcf'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.32.0/httpx-0.32.0-x86_64-apple-darwin.tar'
      sha256 'cb696e5a7e86eb2117be6bd21c8b31d53e5090159b35573b0a804db00cabdfcf'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
