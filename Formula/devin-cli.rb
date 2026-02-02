class DevinCli < Formula
  desc "Unofficial CLI for Devin AI"
  homepage "https://github.com/revanthpobala/devin-cli"
  url "https://files.pythonhosted.org/packages/source/d/devin-cli/devin_cli-0.1.1.tar.gz"
  sha256 "c992c15a840799cb85c40fb27b3e02515325d0681cf6fe310c70eceab514455d"
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
