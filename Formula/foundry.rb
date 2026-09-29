# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.39.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.9/foundry-darwin-arm64.tar.gz"
      sha256 "1867733baf6308097ffc45088c741da39b9f8fc62a33f2c92fe4fe40f30e04c6"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.9/foundry-darwin-x64.tar.gz"
      sha256 "5857a4fb6ba2daf96cb7e18fd949654afdf0ae12b5fcf6ae66df24c5b374bb16"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.9/foundry-linux-x64.tar.gz"
      sha256 "bd69b4338b1162e87f7f00552b1abd595f764e2ef293014124e514a19506d00d"

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
