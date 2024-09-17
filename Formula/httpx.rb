class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.42.6'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.42.6/httpx-0.42.6-x86_64-apple-darwin.tar'
      sha256 '323f2708ff82a23c071bde5aac762e66c00a582644d7d9b5cb25e0d23a7e4989'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.42.6/httpx-0.42.6-aarch64-apple-darwin.tar'
      sha256 'd693532cc06be3d9880d044fe6ea68b2114da162fa32a59e0eb093a11af242ac'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
