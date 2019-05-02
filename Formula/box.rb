class Box < Formula
  desc "📦🚀 Fast, zero config application bundler with PHARs"
  homepage "https://github.com/humbug/box"
  url "https://github.com/humbug/box/releases/download/3.7.0/box.phar"
  sha256 "57daab20d12c9eeec2cf244b0f1966327de369a66d2f59ed3bda6a3f5e9f05a9"

  bottle :unneeded

  depends_on "php" if MacOS.version <= :el_capitan

  def install
    bin.install "box.phar" => "box"
  end

  test do
    shell_output("#{bin}/box --version").include?(version)
  end
end
