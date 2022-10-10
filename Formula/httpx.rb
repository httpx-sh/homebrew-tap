class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.35.2'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.35.2/httpx-0.35.2-x86_64-apple-darwin.tar'
      sha256 'ce6d6a993c929e12f94ba2f0bdb340c1a9d175c74363f54ddd9f0a4e85d84fc3'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.35.2/httpx-0.35.2-x86_64-apple-darwin.tar'
      sha256 'ce6d6a993c929e12f94ba2f0bdb340c1a9d175c74363f54ddd9f0a4e85d84fc3'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
