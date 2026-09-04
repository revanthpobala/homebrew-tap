class DevinCli < Formula
  desc "Unofficial CLI for Devin AI"
  homepage "https://github.com/revanthpobala/devin-cli"
  url "https://files.pythonhosted.org/packages/source/d/devin-cli/devin_cli-1.5.0.tar.gz"
  sha256 "94cb841b28d2c26a581fe6090b4574e24578f8295612f85f84018f9d404fd195"
  license "MIT"

  depends_on "python@3.12"

  def install
    system "python3.12", "-m", "venv", libexec
    system libexec/"bin/pip", "install", "-v", "devin-cli==#{version}"
    bin.install_symlink libexec/"bin/devin"
  end

  test do
    system "#{bin}/devin", "--help"
  end
end
