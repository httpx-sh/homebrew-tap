class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.41.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.41.0/httpx-0.41.0-x86_64-apple-darwin.tar'
      sha256 'be509c708d9dae3233112d74fc40bb2ff5bc48df42d216fa3e4b8fbda342295f'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.41.0/httpx-0.41.0-x86_64-apple-darwin.tar'
      sha256 'be509c708d9dae3233112d74fc40bb2ff5bc48df42d216fa3e4b8fbda342295f'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
