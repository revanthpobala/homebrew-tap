class DevinCli < Formula
  desc "Unofficial CLI for Devin AI"
  homepage "https://github.com/revanthpobala/devin-cli"
  url "https://files.pythonhosted.org/packages/source/d/devin-cli/devin_cli-1.3.1.tar.gz"
  sha256 "a94829afce5f762ca833be8a4c7a567136fc943c325569749486a38c71885027"
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
