class Brewse < Formula
  include Language::Python::Virtualenv

  desc "Interactive TUI browser for Homebrew packages"
  homepage "https://github.com/jonasjancarik/brewse"
  url "https://files.pythonhosted.org/packages/source/b/brewse/brewse-0.3.0.tar.gz"
  sha256 "32c286d8a7b42232cf443144b3ae4baa10e66d29d15611db8e1600de5929e01b"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/brewse", "--version"
  end
end

