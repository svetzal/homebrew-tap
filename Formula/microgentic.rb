# typed: false
# frozen_string_literal: true

class Microgentic < Formula
  desc "Adaptive coding agent optimized for small models"
  homepage "https://github.com/svetzal/microgentic"
  license "MIT"

  on_macos do
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/svetzal/microgentic/releases/download/v0.1.0/microgentic-darwin-arm64.tar.gz"
      sha256 "4a56e1755ba675a8aacbb04fab8a89b6230f23fd1c6e8cb5d0922c17f6429bea"
    end

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.1.0/microgentic-darwin-x64.tar.gz"
      sha256 "3f1c28a9751a6d234dc10d683c7b3ae46854e58d426f1a9ed1a3ce8064aa0bf0"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.1.0/microgentic-linux-x64.tar.gz"
      sha256 "d7bb0d7bf6d1bab3ec7e3e6d3c75f072689fb311bb12c92faae5f65ea1d856cc"
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
