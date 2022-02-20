class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.10.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/0.10.0/httpx-0.10.0-x86_64-apple-darwin.tar'
      sha256 '384e2e8c972a63d039e362b1fcd1a48964a0782dc53df41d4013f62d283b4ae7'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/0.10.0/httpx-0.10.0-x86_64-apple-darwin.tar'
      sha256 '384e2e8c972a63d039e362b1fcd1a48964a0782dc53df41d4013f62d283b4ae7'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
