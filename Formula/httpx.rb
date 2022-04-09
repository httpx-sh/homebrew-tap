class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.24.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.24.2/httpx-0.24.0-x86_64-apple-darwin.tar'
      sha256 '3e116d7f4c3478df5dbe472bb69d28e7c09ddf8b16dcdcd27a58958a05492fd9'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.24.2/httpx-0.24.0-x86_64-apple-darwin.tar'
      sha256 '3e116d7f4c3478df5dbe472bb69d28e7c09ddf8b16dcdcd27a58958a05492fd9'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
