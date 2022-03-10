class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.15.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.15.0/httpx-0.15.0-x86_64-apple-darwin.tar'
      sha256 'f731b892048b7839ecde018ec680ffb56be703c6ef42d9040c5fda5d62cd235c'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.15.0/httpx-0.15.0-x86_64-apple-darwin.tar'
      sha256 'f731b892048b7839ecde018ec680ffb56be703c6ef42d9040c5fda5d62cd235c'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
