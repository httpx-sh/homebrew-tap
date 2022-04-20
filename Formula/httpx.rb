class Httpx < Formula
    desc 'httpx - CLI to run HTTP file'
    homepage 'https://github.com/httpx-sh/httpx'
    version '0.29.0'
    license 'Apache-2.0'
  
    depends_on 'grpcurl'
  
    if OS.mac? && Hardware::CPU.intel?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.29.0/httpx-0.29.0-x86_64-apple-darwin.tar'
      sha256 '34ed97c4e5ef1962dd0c6d9bb79ce98f4dc981c5c54d0064702bb650b4aeafc8'
    end
    if OS.mac? && Hardware::CPU.arm?
      url 'https://github.com/servicex-sh/httpx/releases/download/v0.29.0/httpx-0.29.0-x86_64-apple-darwin.tar'
      sha256 '34ed97c4e5ef1962dd0c6d9bb79ce98f4dc981c5c54d0064702bb650b4aeafc8'
    end
  
    def install
      libexec.install Dir['*']
      bin.install_symlink "#{libexec}/bin/httpx"
    end
  
  end
