class Costdoctor < Formula
  desc "See where your Claude Code and Codex tokens go, and when you will hit your plan limit"
  homepage "https://github.com/apexnorthca/costdoctor-cli"
  url "https://github.com/apexnorthca/costdoctor-cli/releases/download/v1.0.1/costdoctor-1.0.1-macos.zip"
  sha256 "d1e60d4d7ebd0f3e8978d37838bb273cf73ae8c6047e6d56d5dee2b29d869eb5"
  version "1.0.1"
  license "MIT"

  depends_on :macos

  def install
    bin.install "costdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/costdoctor --version")
  end
end
