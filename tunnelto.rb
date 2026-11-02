class Tunnelto < Formula
    desc "Expose your local web server to the internet with a public url: https://tunnelto.dev"
    homepage "https://github.com/agrinman/tunnelto"
    url "https://github.com/tunneltodev/tunnelto/archive/refs/tags/0.2.0.tar.gz"
    sha256 "76f9a9331616a3644492e89be6c1a69a4598a6a980f96953cfbc5e997867f0bc"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", "--locked", "--root", prefix.to_s, "--path", "./tunnelto"
    end
  
    test do
      system "#{bin}/tunnelto", "--help"
      system "#{bin}/tunn", "--version"
    end
  end
