class Tunnelto < Formula
    desc "Expose your local web server to the internet with a public url: https://tunnelto.dev"
    homepage "https://github.com/agrinman/tunnelto"
    url "https://github.com/tunneltodev/tunnelto/archive/refs/tags/0.1.20.tar.gz"
    sha256 "378765016a0cf76ca9d3be5ec8699e6ce280eeab286952ac37b55aa07b7641bd"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", "--bin", "tunnelto", "--locked", "--root", prefix.to_s, "--path", "./tunnelto"
    end
  
    test do
      system "#{bin}/tunnelto", "--help"
    end
  end
