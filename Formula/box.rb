class Box < Formula
  desc "Fast, zero config application bundler with PHARs"
  homepage "https://github.com/box-project/box"
  url "https://github.com/box-project/box/releases/download/4.6.6/box.phar"
  sha256 "aa0966319f709e74bf2bf1d58ddb987903ae4f6d0a9d335ec2261813c189f7fc"

  depends_on "php"

  def install
    bin.install "box.phar" => "box"
  end

  test do
    shell_output("#{bin}/box --version").include?(version)
  end
end
