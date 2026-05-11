# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.15.0/foundry-darwin-arm64.tar.gz"
      sha256 "ccd0567a82b60947bcfcc834404aac8ebce27978f1c72ee7f435a4fa7e52b830"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.15.0/foundry-darwin-x64.tar.gz"
      sha256 "abd72e305ca64eef06a7487193ddd8f878fdeb51f969364990cf7fea991c4395"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.15.0/foundry-linux-x64.tar.gz"
      sha256 "74a74a54f92c5abb1034480740f4f714a28d5197196e674cd652e2d48780c13c"

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
