class Box < Formula
  desc "📦🚀 Fast, zero config application bundler with PHARs"
  homepage "https://github.com/humbug/box"
  url "https://github.com/humbug/box/releases/download/3.0.0/box.phar"
  sha256 "397f012cae0e7124cc2f949daa45cef594bfe2784c700fe33724dea43ce89777"

  bottle :unneeded

  depends_on "php" if MacOS.version <= :el_capitan

  def install
    bin.install "box.phar" => "box"
  end

  test do
    shell_output("#{bin}/box --version").include?(version)
  end
end
