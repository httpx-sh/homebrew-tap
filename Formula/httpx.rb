class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.25.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.25.3/httpx-0.25.0-x86_64-apple-darwin.tar'
      sha256 '254f96338c90c750e0a4240a945ae4af74fc77a64ee4011f0fc8abd48d4cc5ec'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.25.3/httpx-0.25.0-x86_64-apple-darwin.tar'
      sha256 '254f96338c90c750e0a4240a945ae4af74fc77a64ee4011f0fc8abd48d4cc5ec'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
