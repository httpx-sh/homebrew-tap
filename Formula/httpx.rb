class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.7.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/0.7.0/httpx-0.7.0-x86_64-apple-darwin.tar'
      sha256 'ce8dc95a73bd7d57364d21c533add5b6ca24bbbe5292f817e155cdc6eff79593'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/0.7.0/httpx-0.7.0-x86_64-apple-darwin.tar'
      sha256 'ce8dc95a73bd7d57364d21c533add5b6ca24bbbe5292f817e155cdc6eff79593'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
