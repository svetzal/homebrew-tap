# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.11.0/foundry-darwin-arm64.tar.gz"
      sha256 "d73e3308a7797e37cb7260de416878f25abdd030a25ad322f03a2ef74f456e6c"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.11.0/foundry-darwin-x64.tar.gz"
      sha256 "70358508d84479af3a97f7bf2f6cd638f322b2b82b163e52b6dd6404c8a0532b"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.11.0/foundry-linux-x64.tar.gz"
      sha256 "64cceed36878cdc58b6f2cec5d5948db603a5d8d0825958ece673fb33b81e84d"

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
