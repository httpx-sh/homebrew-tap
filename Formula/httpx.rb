class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.40.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.40.0/httpx-0.40.0-x86_64-apple-darwin.tar'
      sha256 '2d377670a179da3c5f75c4f757df4460ba5f19638d3130c2f6b0270d90355b49'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.40.0/httpx-0.40.0-x86_64-apple-darwin.tar'
      sha256 '2d377670a179da3c5f75c4f757df4460ba5f19638d3130c2f6b0270d90355b49'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
