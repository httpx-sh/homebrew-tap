class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.29.2'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.29.2/httpx-0.29.2-x86_64-apple-darwin.tar'
      sha256 '088f74dab6c34b9f52eab28e98a6c5ba516d340ac5e904d2db0aedf99d8a6595'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.29.2/httpx-0.29.2-x86_64-apple-darwin.tar'
      sha256 '088f74dab6c34b9f52eab28e98a6c5ba516d340ac5e904d2db0aedf99d8a6595'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
