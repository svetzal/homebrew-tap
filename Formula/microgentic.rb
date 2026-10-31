# typed: false
# frozen_string_literal: true

class Microgentic < Formula
  desc "Adaptive coding agent optimized for small models"
  homepage "https://github.com/svetzal/microgentic"
  license "MIT"

  on_macos do
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/svetzal/microgentic/releases/download/v0.7.0/microgentic-darwin-arm64.tar.gz"
      sha256 "b4d5ce06aed5962061aeb7026cfad175ca93a86781b51a3f3b6b5746d87ff420"
    end

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.7.0/microgentic-darwin-x64.tar.gz"
      sha256 "6854c135175189a30fac84fffdcb21b28913f5e33f213e9591856e71e4627644"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.7.0/microgentic-linux-x64.tar.gz"
      sha256 "f3832242f93e09ee26333c31445d890cb28c74e05649006abcb41ef2b83557b5"
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
