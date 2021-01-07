class Box < Formula
  desc "📦🚀 Fast, zero config application bundler with PHARs"
  homepage "https://github.com/humbug/box"
  url "https://github.com/humbug/box/releases/download/3.11.1/box.phar"
  sha256 "49145e1a644807816481de29611722f881da151e1402806acbfe03a18e00fa0e"

  bottle :unneeded

  depends_on "php" if MacOS.version <= :el_capitan

  def install
    bin.install "box.phar" => "box"
  end

  test do
    shell_output("#{bin}/box --version").include?(version)
  end
end
