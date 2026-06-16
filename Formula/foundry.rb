# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.25.0/foundry-darwin-arm64.tar.gz"
      sha256 "54a9c9eb2538c854f42db0e629850bc80389af42de6cf898f7dd377c7ee02640"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.25.0/foundry-darwin-x64.tar.gz"
      sha256 "43315e0d1cf0593950ac1996247f42d00590f77e871c37c8d6e64c86054836c4"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.25.0/foundry-linux-x64.tar.gz"
      sha256 "8c89ea7ab45b85cd3debc2c7b08e7a8cb1196948c8485217dab8ff65c1155bf5"

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
