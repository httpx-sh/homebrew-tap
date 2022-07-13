class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.33.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.33.0/httpx-0.33.0-x86_64-apple-darwin.tar'
      sha256 '7ce3e5dc03b0a83eece7d290d21574245e0d58bfc554674946fc21f67efc54fc'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.33.0/httpx-0.33.0-x86_64-apple-darwin.tar'
      sha256 '7ce3e5dc03b0a83eece7d290d21574245e0d58bfc554674946fc21f67efc54fc'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
