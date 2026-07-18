# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.29.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.29.2/foundry-darwin-arm64.tar.gz"
      sha256 "38e49db1053f78dfefb6ee74de871ad528f8d9362d07c80c0e6c011c03fc731b"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.29.2/foundry-darwin-x64.tar.gz"
      sha256 "11ed73160dbdd80ac8929875b29386f3c854aa31802d78c283e42d11c4f58a46"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.29.2/foundry-linux-x64.tar.gz"
      sha256 "29400b16213b7d56fc2d5b37dcdc9171fce15f8b9956150d888115c734fbe744"

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
