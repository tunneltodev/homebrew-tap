class Tunnelto < Formula
    desc "Expose your local web server to the internet with a public url: https://tunnelto.dev"
    homepage "https://github.com/tunneltodev/tunnelto"
    url "https://github.com/tunneltodev/tunnelto/archive/refs/tags/0.2.1.tar.gz"
    sha256 "13400ef05d5aa23fac88edbdf8ab5043a6c88e2f857b5bea9f7b6a10b8c36599"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", "--locked", "--root", prefix.to_s, "--path", "./tunnelto"
      # `tunn` is the command; `tunnelto` is kept as an alias for it.
      rm bin/"tunnelto"
      bin.install_symlink "tunn" => "tunnelto"
    end
  
    test do
      system "#{bin}/tunn", "--version"
      system "#{bin}/tunnelto", "--help"
    end
  end
