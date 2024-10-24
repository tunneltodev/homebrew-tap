class Tunnelto < Formula
    desc "Expose your local web server to the internet with a public url: https://tunnelto.dev"
    homepage "https://github.com/agrinman/tunnelto"
    url "https://github.com/agrinman/tunnelto/archive/0.1.18.zip"
    sha256 "4730383204d6120da784d88d517a8464ea39f2ea66e75e00a2ce6147f964a038"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", "--bin", "tunnelto", "--locked", "--root", prefix.to_s, "--path", "./tunnelto"
    end
  
    test do
      system "#{bin}/tunnelto", "--help"
    end
  end