class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.20.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.20.0/httpx-0.20.0-x86_64-apple-darwin.tar'
      sha256 '931e8f73762605092b0969f7e6843e8bb92cf96aec8e41284a507219e7301717'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.20.0/httpx-0.20.0-x86_64-apple-darwin.tar'
      sha256 '931e8f73762605092b0969f7e6843e8bb92cf96aec8e41284a507219e7301717'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
