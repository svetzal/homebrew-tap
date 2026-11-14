# typed: false
# frozen_string_literal: true

class Microgentic < Formula
  desc "Adaptive coding agent optimized for small models"
  homepage "https://github.com/svetzal/microgentic"
  license "MIT"

  on_macos do
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/svetzal/microgentic/releases/download/v0.9.0/microgentic-darwin-arm64.tar.gz"
      sha256 "9b5afe3517736790df2a869e8ae1edc503d3303464db404afa3199ccf9d57790"
    end

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.9.0/microgentic-darwin-x64.tar.gz"
      sha256 "960b98c9b038e4975d266bacf3d6bf48022457c56976d220d1d635984050e070"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.9.0/microgentic-linux-x64.tar.gz"
      sha256 "3316da8c73e8c5592a9b9f4902ef84c481a9c5c9fb950224835af1c9c04f4000"
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
