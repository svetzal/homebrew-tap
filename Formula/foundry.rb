# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.44.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.44.1/foundry-darwin-arm64.tar.gz"
      sha256 "0395745b18aa80fba3b77d2453ff328469982839da22852eb07caee1a8cddad5"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.44.1/foundry-darwin-x64.tar.gz"
      sha256 "ef7bd61926e6351561fab6f749fcf07178d01f5da1dbad4bb57d4eace685af48"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.44.1/foundry-linux-x64.tar.gz"
      sha256 "bb02a5cdafe51658f8074bd0c0ad6ab4d74139c30c51fa3a008aaf0093baec37"

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
