class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.19.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.19.0/httpx-0.19.0-x86_64-apple-darwin.tar'
      sha256 '042f8180c53b5b3b1a50bf69318cbc392c801d0a8b935f7515e351d133c0787c'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.19.0/httpx-0.19.0-x86_64-apple-darwin.tar'
      sha256 '042f8180c53b5b3b1a50bf69318cbc392c801d0a8b935f7515e351d133c0787c'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
