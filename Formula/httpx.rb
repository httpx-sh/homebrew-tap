class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.13.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.13.0/httpx-0.13.0-x86_64-apple-darwin.tar'
      sha256 'd3c85f5d08bdd0ea7002171c1aa0d5c4f1bc7856d4dee51ca74673638d13f1f4'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/httpx-sh/httpx/releases/download/v0.13.0/httpx-0.13.0-x86_64-apple-darwin.tar'
      sha256 'd3c85f5d08bdd0ea7002171c1aa0d5c4f1bc7856d4dee51ca74673638d13f1f4'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
