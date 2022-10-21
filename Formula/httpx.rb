class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.36.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.36.0/httpx-0.36.0-x86_64-apple-darwin.tar'
      sha256 'f538ba69b69a12f6d88911b0c56796a858a8bf713a52ccf65cf8d8661d5058da'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.36.0/httpx-0.36.0-x86_64-apple-darwin.tar'
      sha256 'f538ba69b69a12f6d88911b0c56796a858a8bf713a52ccf65cf8d8661d5058da'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
