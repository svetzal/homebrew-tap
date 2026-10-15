# typed: false
# frozen_string_literal: true

class Microgentic < Formula
  desc "Adaptive coding agent optimized for small models"
  homepage "https://github.com/svetzal/microgentic"
  license "MIT"

  on_macos do
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/svetzal/microgentic/releases/download/v0.4.0/microgentic-darwin-arm64.tar.gz"
      sha256 "7941f4c0ec05d89a85ca6900de881150bd835fc4c69f7ef0e7afa284fd9bf7f5"
    end

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.4.0/microgentic-darwin-x64.tar.gz"
      sha256 "3af4284aee0f335fc800b834153ca50906d2a3038491293611e199d397433c1d"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.4.0/microgentic-linux-x64.tar.gz"
      sha256 "d3d8a731b4942d8b6c540efb9779241fbb0d4d7249bfa0d919207794a6e67118"
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
