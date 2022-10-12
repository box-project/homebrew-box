class Box < Formula
  desc "📦🚀 Fast, zero config application bundler with PHARs"
  homepage "https://github.com/box-project/box"
  url "https://github.com/box-project/box/releases/download/4.1.0/box.phar"
  sha256 "0edad3b02a1c0a92e782210faca06b15e53e3a7343f00a08f3783e63bfb31f3b"

  depends_on "php" if MacOS.version <= :el_capitan

  def install
    bin.install "box.phar" => "box"
  end

  test do
    shell_output("#{bin}/box --version").include?(version)
  end
end
