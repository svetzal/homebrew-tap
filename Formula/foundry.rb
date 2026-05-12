# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.15.1/foundry-darwin-arm64.tar.gz"
      sha256 "52b8bf6f7cd8f07b54696ef671dc56a78e46b50ef53e2d1008c3787d4a2daee8"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.15.1/foundry-darwin-x64.tar.gz"
      sha256 "3d1e954f57bd6f69ce8f649c2a65839360d84044cab3bce11008efc140896a91"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.15.1/foundry-linux-x64.tar.gz"
      sha256 "8ee4fad6d3655b7f0022b08b9b6c0b51a34c0fadb6d19b6c0f5ff9d45fd9b2f6"

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
