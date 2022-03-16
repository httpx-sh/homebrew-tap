class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.18.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.18.0/httpx-0.18.0-x86_64-apple-darwin.tar'
      sha256 '041d7ca7285cb0344625e83a209ac367e86c73782b2024253b37592e1a1275ba'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.18.0/httpx-0.18.0-x86_64-apple-darwin.tar'
      sha256 '041d7ca7285cb0344625e83a209ac367e86c73782b2024253b37592e1a1275ba'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
