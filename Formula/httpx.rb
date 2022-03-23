class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.21.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.21.0/httpx-0.21.0-x86_64-apple-darwin.tar'
      sha256 'b191c0826b6efc3d24c63c0f1bd7fda3479d809bd6adf4d5ac6c09ececf7d608'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.21.0/httpx-0.21.0-x86_64-apple-darwin.tar'
      sha256 'b191c0826b6efc3d24c63c0f1bd7fda3479d809bd6adf4d5ac6c09ececf7d608'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
