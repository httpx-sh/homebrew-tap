class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.41.1'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.41.1/httpx-0.41.1-x86_64-apple-darwin.tar'
      sha256 'cf4c69cc5a1fbb794d2abef58dc33538b7a63b9f7079cb14250c07dc70e48253'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.41.1/httpx-0.41.1-x86_64-apple-darwin.tar'
      sha256 'cf4c69cc5a1fbb794d2abef58dc33538b7a63b9f7079cb14250c07dc70e48253'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
