class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.34.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.34.0/httpx-0.34.0-x86_64-apple-darwin.tar'
      sha256 'c9e97642ff12fc68b89ea284091921e1d21e56e3b4a4da52265a145415b72c02'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.34.0/httpx-0.34.0-x86_64-apple-darwin.tar'
      sha256 'c9e97642ff12fc68b89ea284091921e1d21e56e3b4a4da52265a145415b72c02'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
