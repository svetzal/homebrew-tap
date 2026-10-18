# typed: false
# frozen_string_literal: true

class Microgentic < Formula
  desc "Adaptive coding agent optimized for small models"
  homepage "https://github.com/svetzal/microgentic"
  license "MIT"

  on_macos do
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/svetzal/microgentic/releases/download/v0.5.0/microgentic-darwin-arm64.tar.gz"
      sha256 "43766b87f2ab9b6820c6b36fde295abb349822e5be609a32bb68106127517886"
    end

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.5.0/microgentic-darwin-x64.tar.gz"
      sha256 "5b7cd0a5c3bff7e560b58814eb9f4f60110504cae543f5e2f723fff9a8bd0e03"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.5.0/microgentic-linux-x64.tar.gz"
      sha256 "50be602d45003d3c62c7fedd31148603f8ad501e401f181a76054124ba2df2e0"
    end
  end

  def install
    bin.install "microgentic", "adaptive-agent-harness"
    pkgshare.install "release.json"
  end

  test do
    assert_match "microgentic #{version}", shell_output("#{bin}/microgentic --version")
    assert_match "benchmark", shell_output("#{bin}/microgentic --help")
    assert_match version.to_s, (pkgshare/"release.json").read
    output = shell_output("#{bin}/microgentic setup --provider ollama --model test-model " \
                          "--reasoning-effort default --json")
    assert_match '"provider": "ollama"', output
    assert_match '"applied": false', output
  end
end
