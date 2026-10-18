# typed: false
# frozen_string_literal: true

class Microgentic < Formula
  desc "Adaptive coding agent optimized for small models"
  homepage "https://github.com/svetzal/microgentic"
  license "MIT"

  on_macos do
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/svetzal/microgentic/releases/download/v0.6.0/microgentic-darwin-arm64.tar.gz"
      sha256 "58e98dca67affe528c8f067cd62ceb642a0a367fe8e38797ab993a586e6aecd6"
    end

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.6.0/microgentic-darwin-x64.tar.gz"
      sha256 "5a2ec05d0afde92f1df92717bc7606a87c75f0136b7a2882a708fa6a3fa931f8"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.6.0/microgentic-linux-x64.tar.gz"
      sha256 "d69f769a67a23986bf12c6facc67f26c71fd43a03cac5ed7d2b844ce97f22d00"
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
