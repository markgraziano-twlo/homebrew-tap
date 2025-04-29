class Secretverify < Formula
  include Language::Python::Virtualenv

  desc "Validate leaked secrets from the command line"
  homepage "https://github.com/your-username/secretverify"
  url "https://github.com/your-username/secretverify/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
