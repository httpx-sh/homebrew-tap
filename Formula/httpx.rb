class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.38.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.38.0/httpx-0.38.0-x86_64-apple-darwin.tar'
      sha256 '29b158c4a073cc1db77ca9ef22c9257627f36953583644ffadb835b73fd15a4c'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.38.0/httpx-0.38.0-x86_64-apple-darwin.tar'
      sha256 '29b158c4a073cc1db77ca9ef22c9257627f36953583644ffadb835b73fd15a4c'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
