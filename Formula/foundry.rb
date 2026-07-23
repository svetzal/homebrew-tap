# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.32.0/foundry-darwin-arm64.tar.gz"
      sha256 "c972b60d0147dd5e67eeef8ec360e683d31c853fe1046b5faad9dca1bd049439"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.32.0/foundry-darwin-x64.tar.gz"
      sha256 "99b0a2ad623c1f324b139c2e746917e24c5d5d0d1e343014ac74b7b04fb5e33e"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.32.0/foundry-linux-x64.tar.gz"
      sha256 "dc21f82c62a4616ad64f7463ed41d8d3baf258e124f9c364cbba9d39d3b0c968"

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
