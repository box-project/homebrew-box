class Box < Formula
  desc "📦🚀 Fast, zero config application bundler with PHARs"
  homepage "https://github.com/humbug/box"
  url "https://github.com/humbug/box/releases/download/3.8.0/box.phar"
  sha256 "48cf39f95667e20173a3835799951e1f237187cec8ca55d950c3cf1c6035efc4"

  bottle :unneeded

  depends_on "php" if MacOS.version <= :el_capitan

  def install
    bin.install "box.phar" => "box"
  end

  test do
    shell_output("#{bin}/box --version").include?(version)
  end
end
