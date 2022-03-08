class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.14.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.14.0/httpx-0.14.0-x86_64-apple-darwin.tar'
      sha256 'be277c5d7761844fd999426ba87c08f54f0dc8a0a28dd838305d5cf1e8da7df3'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.14.0/httpx-0.14.0-x86_64-apple-darwin.tar'
      sha256 'be277c5d7761844fd999426ba87c08f54f0dc8a0a28dd838305d5cf1e8da7df3'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
