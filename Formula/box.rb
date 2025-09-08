class Box < Formula
  desc "Fast, zero config application bundler with PHARs"
  homepage "https://github.com/box-project/box"
  url "https://github.com/box-project/box/releases/download/4.6.7/box.phar"
  sha256 "f49a711985219c9e0ef9faa49a95d8ab47385b8b8966dc5ac0ca10f9ac318e6b"

  depends_on "php"

  def install
    bin.install "box.phar" => "box"
  end

  test do
    shell_output("#{bin}/box --version").include?(version)
  end
end
