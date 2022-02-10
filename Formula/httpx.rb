class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.9.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/0.9.0/httpx-0.9.0-x86_64-apple-darwin.tar'
      sha256 '1bd969e6162c7908eb64cf6a47e4411010900b312adebc0d66055860ee8445dc'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/0.9.0/httpx-0.9.0-x86_64-apple-darwin.tar'
      sha256 '1bd969e6162c7908eb64cf6a47e4411010900b312adebc0d66055860ee8445dc'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
