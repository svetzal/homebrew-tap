# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.42.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.42.1/foundry-darwin-arm64.tar.gz"
      sha256 "aafa7f84a5d33d424c1e4ee1a6d0bc8ba430f4e0ea6c1f6d8bde233bd889e273"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.42.1/foundry-darwin-x64.tar.gz"
      sha256 "e598f36c47ec9d4da99560c5bee791b0774337bfb0bc4e2b323f44381758ee23"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.42.1/foundry-linux-x64.tar.gz"
      sha256 "3f8af8dcbfa6545ce6775e34d73965173057d63b3ea6a62c8ee8229e27a92d0f"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/foundry --version")
  end
end
