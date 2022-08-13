class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.35.1'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.35.1/httpx-0.35.1-x86_64-apple-darwin.tar'
      sha256 'fe5e1d07b43f70a01c44a62198e3f58d5c22c8c642eb8b448b3d3ccd6bea3b31'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.35.1/httpx-0.35.1-x86_64-apple-darwin.tar'
      sha256 'fe5e1d07b43f70a01c44a62198e3f58d5c22c8c642eb8b448b3d3ccd6bea3b31'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
