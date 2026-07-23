# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.34.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.34.1/foundry-darwin-arm64.tar.gz"
      sha256 "426a1392484f0391ae66a8c445a8113471a786d54ff881547f401ebcbf1482ce"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.34.1/foundry-darwin-x64.tar.gz"
      sha256 "631e78221128441560925006f29be805e300f909d5e3fc8609d092634afd8aab"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.34.1/foundry-linux-x64.tar.gz"
      sha256 "33be140264cc5a6e07958a1b0f42bc77a62b958312499bbd6daa1800669c5ff3"

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
