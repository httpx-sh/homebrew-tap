class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.11.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.11.0/httpx-0.11.0-x86_64-apple-darwin.tar'
      sha256 '799b0e4b2117ffd02be22572fa06411a635132f93f051245893a6ac5397e24f2'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.11.0/httpx-0.11.0-x86_64-apple-darwin.tar'
      sha256 '799b0e4b2117ffd02be22572fa06411a635132f93f051245893a6ac5397e24f2'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
