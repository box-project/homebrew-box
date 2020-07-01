class Box < Formula
  desc "📦🚀 Fast, zero config application bundler with PHARs"
  homepage "https://github.com/humbug/box"
  url "https://github.com/humbug/box/releases/download/3.8.4/box.phar"
  sha256 "f2058b50b126f1e9e811538ef2688cdbf578ae24f881de6d32a5f30c4eb6e3fb"

  bottle :unneeded

  depends_on "php" if MacOS.version <= :el_capitan

  def install
    bin.install "box.phar" => "box"
  end

  test do
    shell_output("#{bin}/box --version").include?(version)
  end
end
