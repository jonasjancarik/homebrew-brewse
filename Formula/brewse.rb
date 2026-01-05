class Brewse < Formula
  include Language::Python::Virtualenv

  desc "Interactive TUI browser for Homebrew packages"
  homepage "https://github.com/jonasjancarik/brewse"
  url "https://files.pythonhosted.org/packages/source/b/brewse/brewse-0.2.1.tar.gz"
  sha256 "d754a196b78f796779ba0165d1485c189821c92bdcc715e40ca69900a5f9b363"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/brewse", "--version"
  end
end

