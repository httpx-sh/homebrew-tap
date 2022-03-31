class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.23.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.23.0/httpx-0.23.0-x86_64-apple-darwin.tar'
      sha256 'fcda9c6858495d3cb032eccd11fafa307e1bbe1151ee37d456e2e2d85d2b5e0b'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.23.0/httpx-0.23.0-x86_64-apple-darwin.tar'
      sha256 'fcda9c6858495d3cb032eccd11fafa307e1bbe1151ee37d456e2e2d85d2b5e0b'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
