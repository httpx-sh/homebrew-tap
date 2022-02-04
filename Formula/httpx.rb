class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.6.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/0.6.1/httpx-0.6.0-x86_64-apple-darwin.tar'
      sha256 '94eeef43333d3e3bec29df3e043f3bb4caad08575966125f15afe3f921258cf4'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/0.6.1/httpx-0.6.0-x86_64-apple-darwin.tar'
      sha256 '94eeef43333d3e3bec29df3e043f3bb4caad08575966125f15afe3f921258cf4'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end