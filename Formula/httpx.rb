class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.42.4'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.42.4/httpx-0.42.4-x86_64-apple-darwin.tar'
      sha256 'a7255aafd39e3b10e2cd529644b4c02a8de6074c7b828a6ff47cba58860d77a7'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.42.4/httpx-0.42.4-aarch64-apple-darwin.tar'
      sha256 '3e92d639d2f35508b9101173b3f39e5f82dfda71fcc52f8c67c40c94fb6c97ab'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
