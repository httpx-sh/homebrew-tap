class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.5.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/0.5.3/httpx-0.5.0-x86_64-apple-darwin.tar'
      sha256 '6cd1885c506bb5b79810d37db655507241c2d952e52132a4258c48d124aa28ac'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/0.5.3/httpx-0.5.0-x86_64-apple-darwin.tar'
      sha256 '6cd1885c506bb5b79810d37db655507241c2d952e52132a4258c48d124aa28ac'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end