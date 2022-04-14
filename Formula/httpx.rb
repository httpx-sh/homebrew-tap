class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.27.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.27.0/httpx-0.27.0-x86_64-apple-darwin.tar'
      sha256 '2bf15baae77abd66f62262e7865674494b0c11e54642f98e0b9b4b522746bac2'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.27.0/httpx-0.27.0-x86_64-apple-darwin.tar'
      sha256 '2bf15baae77abd66f62262e7865674494b0c11e54642f98e0b9b4b522746bac2'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
