class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.31.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.31.0/httpx-0.31.0-x86_64-apple-darwin.tar'
      sha256 'd4396ad68773b748431f46d95398f5ce5a0995a3ce5b2c4eb858d0aedb01f169'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.31.0/httpx-0.31.0-x86_64-apple-darwin.tar'
      sha256 'd4396ad68773b748431f46d95398f5ce5a0995a3ce5b2c4eb858d0aedb01f169'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
