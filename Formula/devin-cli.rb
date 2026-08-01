class DevinCli < Formula
  desc "Unofficial CLI for Devin AI"
  homepage "https://github.com/revanthpobala/devin-cli"
  url "https://files.pythonhosted.org/packages/source/d/devin-cli/devin_cli-1.4.0.tar.gz"
  sha256 "44500d79d31659e3233839c36b95a3ca931392327e53d23bff7b153538013200"
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
