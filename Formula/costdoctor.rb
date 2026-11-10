class Costdoctor < Formula
  desc "See where your Claude Code and Codex tokens go, and when you will hit your plan limit"
  homepage "https://github.com/apexnorthca/costdoctor-cli"
  url "https://github.com/apexnorthca/costdoctor-cli/releases/download/v1.0.0/costdoctor-1.0.0-macos.zip"
  sha256 "30e82666a3b74019f50b24a94086ee43c5a7a01428f9f5a7d0eece59de105e56"
  version "1.0.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "costdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/costdoctor --version")
  end
end
