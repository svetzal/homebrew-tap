# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.45.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.45.0/foundry-darwin-arm64.tar.gz"
      sha256 "fec7a2592c06caf5c714b13e66cafdf7fac71ef70ec72be92987f3f9854f0ff2"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.45.0/foundry-darwin-x64.tar.gz"
      sha256 "d945304674fa91daaf3bfb4adbf7fc13dca8a80afe885ea30f8cf04ac11bfbcb"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.45.0/foundry-linux-x64.tar.gz"
      sha256 "e578d1c0c0e312bc2ac224609ab12f0b7cf338bb371746ee8915939c41b2ac5d"

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
