class Costdoctor < Formula
  desc "See where your Claude Code and Codex tokens go, and when you will hit your plan limit"
  homepage "https://github.com/apexnorthca/costdoctor-cli"
  url "https://github.com/apexnorthca/costdoctor-cli/releases/download/v1.0.2/costdoctor-1.0.2-macos.zip"
  sha256 "016ad81c388e959ff84be2ed543c5c0c560eb9f938d1e2b18fcecf99093a2fdf"
  version "1.0.2"
  license "MIT"

  depends_on :macos

  def install
    bin.install "costdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/costdoctor --version")
  end
end
