# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.8.1/foundry-darwin-arm64.tar.gz"
      sha256 "0444db2edf3198dc51d616a5723891754e32cf1d67c23cf24af2a9673415fee8"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.8.1/foundry-darwin-x64.tar.gz"
      sha256 "68a8e0e7150366dedf9c7bc2d05a73c6112c92f66b3f9aedceaf42200902f603"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.8.1/foundry-linux-x64.tar.gz"
      sha256 "634ee1c376dced885efce3512bc87a92bd3e2e5502a03e8a8316a208449d56a2"

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
