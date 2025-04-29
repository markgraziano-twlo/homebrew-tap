class Secretverify < Formula
  include Language::Python::Virtualenv

  desc "Validate leaked secrets from the command line"
  homepage "https://github.com/your-username/secretverify"
  url "https://github.com/markgraziano-twlo/secretverify/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "cf009a54ca18b7c160acf9d092a2deb0b854e799d187e1e672bc813f746fac1c"
  license "MIT"  # or whatever license you choose

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    # quick smoke test: list options
    assert_match "Select secret type", pipe_output("#{bin}/secretverify --help")
  end
end
