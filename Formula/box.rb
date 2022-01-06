class Box < Formula
  desc "📦🚀 Fast, zero config application bundler with PHARs"
  homepage "https://github.com/box-project/box"
  url "https://github.com/box-project/box/releases/download/3.14.0/box.phar"
  sha256 "dbbd211f7690845a5e545105b569be7b7b2c671c2b2e0dfab571c708562e7bf4"

  depends_on "php" if MacOS.version <= :el_capitan

  def install
    bin.install "box.phar" => "box"
  end

  test do
    shell_output("#{bin}/box --version").include?(version)
  end
end
