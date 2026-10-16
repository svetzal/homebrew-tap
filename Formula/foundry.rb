# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.51.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.51.0/foundry-darwin-arm64.tar.gz"
      sha256 "8bbe426cdd09657ed6644bdaa413ece3a7461df785ca7ca4ccde031674b1df00"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.51.0/foundry-darwin-x64.tar.gz"
      sha256 "1badb3f4bc6778de52adf125c2b9f3145e8a52385c2794aad699db0c00d6f94d"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.51.0/foundry-linux-x64.tar.gz"
      sha256 "df8b36c2feeec30ce337287641949116bb2a7c1d6cb18d7e3a4a4c17d36e122f"

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
