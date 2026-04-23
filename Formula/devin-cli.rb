class DevinCli < Formula
  desc "Unofficial CLI for Devin AI"
  homepage "https://github.com/revanthpobala/devin-cli"
  url "https://files.pythonhosted.org/packages/source/d/devin-cli/devin_cli-1.3.3.tar.gz"
  sha256 "6d86b6dc89fc967d62f5fec255003d82cdd586d16618db7c23d5b57993824d97"
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
