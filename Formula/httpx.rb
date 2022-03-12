class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.17.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.17.0/httpx-0.17.0-x86_64-apple-darwin.tar'
      sha256 'bbf66503f6d4de843b92b823e15badaa57fb49767bd5cb2aa1aab3564599f281'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.17.0/httpx-0.17.0-x86_64-apple-darwin.tar'
      sha256 'bbf66503f6d4de843b92b823e15badaa57fb49767bd5cb2aa1aab3564599f281'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
