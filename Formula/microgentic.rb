# typed: false
# frozen_string_literal: true

class Microgentic < Formula
  desc "Adaptive coding agent optimized for small models"
  homepage "https://github.com/svetzal/microgentic"
  license "MIT"

  on_macos do
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/svetzal/microgentic/releases/download/v0.3.0/microgentic-darwin-arm64.tar.gz"
      sha256 "9d481c03c2320266b5e1e397dff3276f1e5ab039d2e42ed711f0fcb680780788"
    end

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.3.0/microgentic-darwin-x64.tar.gz"
      sha256 "e15879adb4670db38fa12309475c07774a88091517e2e5071de1e379974ff633"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.3.0/microgentic-linux-x64.tar.gz"
      sha256 "356754bd816333b12bb042372eee4b109c1aba662d2d15d9f121a6c5c618c1f8"
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
