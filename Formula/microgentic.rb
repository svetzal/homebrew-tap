# typed: false
# frozen_string_literal: true

class Microgentic < Formula
  desc "Adaptive coding agent optimized for small models"
  homepage "https://github.com/svetzal/microgentic"
  license "MIT"

  on_macos do
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/svetzal/microgentic/releases/download/v0.8.0/microgentic-darwin-arm64.tar.gz"
      sha256 "36ed18af9a877819335fb3b41ed0f93a68e92990593add688ac6dac3480fc74a"
    end

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.8.0/microgentic-darwin-x64.tar.gz"
      sha256 "4efc21fde1f1158a82dc9b40957d6985f6dfe9944b8ec181f1d3acd19caad8a7"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.8.0/microgentic-linux-x64.tar.gz"
      sha256 "9c0dee97fb1687d6727c978eae5babdad860ad36f4ea4765590127b724c2da49"
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
