class Secretverify < Formula
  include Language::Python::Virtualenv

  desc "Validate leaked secrets from the command line"
  homepage "https://github.com/markgraziano-twlo/secretverify"
  url "https://github.com/markgraziano-twlo/secretverify/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "cf009a54ca18b7c160acf9d092a2deb0b854e799d187e1e672bc813f746fac1c"
  license "MIT"

  depends_on "python@3.11"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/source/r/requests/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/source/b/boto3/boto3-1.26.151.tar.gz"
    sha256 "81bff32c96a6b4b203beb63826214d8cf24ca1a86e81d43bbb688a21c5d79e2a"
  end

  resource "google-auth" do
    url "https://files.pythonhosted.org/packages/source/g/google-auth/google-auth-2.23.0.tar.gz"
    sha256 "753a26312e6f1eaeec20bc6f2644a10926697da93446e1f8e24d6d32d45a922a"
  end

  resource "PyInquirer" do
    url "https://files.pythonhosted.org/packages/source/P/PyInquirer/PyInquirer-1.0.3.tar.gz"
    sha256 "c9a92d68d7727fbd886a7908c08fd9e9773e5dc211bf5cbf836ba90d366dee51"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Select secret type", pipe_output("#{bin}/secretverify --help")
  end
end
