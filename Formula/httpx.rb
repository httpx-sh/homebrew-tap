class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.30.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.30.0/httpx-0.30.0-x86_64-apple-darwin.tar'
      sha256 'b8d245c37853ec77f72ba703715489ffee962db82e24db6d22112e119387dbf9'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.30.0/httpx-0.30.0-x86_64-apple-darwin.tar'
      sha256 'b8d245c37853ec77f72ba703715489ffee962db82e24db6d22112e119387dbf9'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
