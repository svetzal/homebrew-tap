# typed: false
# frozen_string_literal: true

class Microgentic < Formula
  desc "Adaptive coding agent optimized for small models"
  homepage "https://github.com/svetzal/microgentic"
  license "MIT"

  on_macos do
    depends_on macos: :sequoia

    on_arm do
      url "https://github.com/svetzal/microgentic/releases/download/v0.2.0/microgentic-darwin-arm64.tar.gz"
      sha256 "c97c1fd172ff68305a854807890ce46a13e27eaeb64b26922e76dd697b47b36b"
    end

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.2.0/microgentic-darwin-x64.tar.gz"
      sha256 "cf325d0134caa1f483def427d649ef77c1ef11ce97f3af9063906d319f208d98"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/svetzal/microgentic/releases/download/v0.2.0/microgentic-linux-x64.tar.gz"
      sha256 "82be7e76e8d3f911f06daa3cfed604f27657414fa9c8066d4c829e2b8dc4b1f3"
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
