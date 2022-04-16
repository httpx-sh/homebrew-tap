class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.28.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.28.0/httpx-0.28.0-x86_64-apple-darwin.tar'
      sha256 'a7efee519190c5f8ac95fa46844a32423df7aff7beca73753b8839fce1d682f3'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.28.0/httpx-0.28.0-x86_64-apple-darwin.tar'
      sha256 'a7efee519190c5f8ac95fa46844a32423df7aff7beca73753b8839fce1d682f3'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
