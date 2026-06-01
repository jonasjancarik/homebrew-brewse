class Brewse < Formula
  include Language::Python::Virtualenv

  desc "Interactive TUI browser for Homebrew packages"
  homepage "https://github.com/jonasjancarik/brewse"
  url "https://files.pythonhosted.org/packages/source/b/brewse/brewse-0.4.0.tar.gz"
  sha256 "f2b80d837d353193ac31b4b6facf755238575f2290ac8cbc869517508922054e"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  def post_install
    system "#{bin}/brewse", "--prefetch"
  rescue
    opoo "Unable to prefetch package data; Brewse will refresh on first launch."
  end

  service do
    run [opt_bin/"brewse", "--prefetch"]
    run_type :interval
    interval 86_400
    environment_variables PATH: std_service_path_env
    log_path var/"log/brewse.log"
    error_log_path var/"log/brewse.err.log"
  end

  test do
    system "#{bin}/brewse", "--version"
  end
end

