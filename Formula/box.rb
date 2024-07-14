class Box < Formula
  desc "📦🚀 Fast, zero config application bundler with PHARs"
  homepage "https://github.com/box-project/box"
  url "https://github.com/box-project/box/releases/download/4.6.1/box.phar"
  sha256 "8d12a7d69a5003a80bd603ea95a8f3dcea30b9a2ad84cd7cb15b8193929def9e"

  depends_on "php"

  def install
    bin.install "box.phar" => "box"
  end

  test do
    shell_output("#{bin}/box --version").include?(version)
  end
end
