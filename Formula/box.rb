class Box < Formula
  desc "📦🚀 Fast, zero config application bundler with PHARs"
  homepage "https://github.com/box-project/box"
  url "https://github.com/box-project/box/releases/download/3.16.0/box.phar"
  sha256 "f508e28f309d7e95a319bdcd5f13dcfbb18eb91cb7a6cac9b69bc7799d78bdf9"

  depends_on "php" if MacOS.version <= :el_capitan

  def install
    bin.install "box.phar" => "box"
  end

  test do
    shell_output("#{bin}/box --version").include?(version)
  end
end
