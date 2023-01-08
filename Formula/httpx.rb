class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.39.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.39.0/httpx-0.39.0-x86_64-apple-darwin.tar'
      sha256 '4d232122940ff55ace476dda764a5568bffb609b71d718376de5a9e6ef493200'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.39.0/httpx-0.39.0-x86_64-apple-darwin.tar'
      sha256 '4d232122940ff55ace476dda764a5568bffb609b71d718376de5a9e6ef493200'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
