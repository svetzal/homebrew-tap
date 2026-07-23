# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.34.0/foundry-darwin-arm64.tar.gz"
      sha256 "945a49b49a800a6ed3785190a4ed2c118b894e3751801e603e4cbba639edc708"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.34.0/foundry-darwin-x64.tar.gz"
      sha256 "9c380c872282e8f9a1a62a2516627824138bff2fe9713e52bea23efb0a0cfac0"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.34.0/foundry-linux-x64.tar.gz"
      sha256 "a69741fffaf7f83b2e28325d55e07acb8253e01c1dec1f84f73cb844165c8b1b"

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
