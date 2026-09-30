# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.40.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.40.2/foundry-darwin-arm64.tar.gz"
      sha256 "75728eb373640c9f5521d388c570708ce65f387cd8ec6898e3c724fba9782c01"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.40.2/foundry-darwin-x64.tar.gz"
      sha256 "5d472b104ae55446553d1ae9d097385e88febe799cb665eee3100f7e36101927"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.40.2/foundry-linux-x64.tar.gz"
      sha256 "de6512adba19b56d1687b29944a73b27b309bad483f1f299bce8c83446978a9d"

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
