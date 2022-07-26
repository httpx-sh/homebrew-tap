class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.35.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.35.0/httpx-0.35.0-x86_64-apple-darwin.tar'
      sha256 '4310a388ff1a40140a2c699b0da26a6d7f0fb774ea611155f438ce870518ae33'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.35.0/httpx-0.35.0-x86_64-apple-darwin.tar'
      sha256 '4310a388ff1a40140a2c699b0da26a6d7f0fb774ea611155f438ce870518ae33'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
