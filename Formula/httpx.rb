class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.8.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/0.8.0/httpx-0.8.0-x86_64-apple-darwin.tar'
      sha256 '507ec47d6336bb80fb12a9b8c42b0145abf1db88327e15e6721eb8d391475030'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/0.8.0/httpx-0.8.0-x86_64-apple-darwin.tar'
      sha256 '507ec47d6336bb80fb12a9b8c42b0145abf1db88327e15e6721eb8d391475030'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
