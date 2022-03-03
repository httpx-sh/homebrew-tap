class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.12.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.12.0/httpx-0.12.0-x86_64-apple-darwin.tar'
      sha256 'b380335624ecf3d8e3da5362d6153aa65f935fb96d64055cdef02df9f3b3c688'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.12.0/httpx-0.12.0-x86_64-apple-darwin.tar'
      sha256 'b380335624ecf3d8e3da5362d6153aa65f935fb96d64055cdef02df9f3b3c688'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
