class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.37.1'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.37.1/httpx-0.37.1-x86_64-apple-darwin.tar'
      sha256 '39584626a0a772446d9cc52792316c4705e4166ede0086862a73eeaeb1405f88'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.37.1/httpx-0.37.1-x86_64-apple-darwin.tar'
      sha256 '39584626a0a772446d9cc52792316c4705e4166ede0086862a73eeaeb1405f88'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
