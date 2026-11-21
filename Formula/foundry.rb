# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.60.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.60.0/foundry-darwin-arm64.tar.gz"
      sha256 "a85e39990bfc7e2ba1082dd55a7acdb1863dd12d205132050f2171e3905ae23a"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.60.0/foundry-darwin-x64.tar.gz"
      sha256 "db5d8db2380b587a66552f2d20c0a03d25cb231ba3c5e58f47bee32421aef5e7"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.60.0/foundry-linux-x64.tar.gz"
      sha256 "9a8262b5e34ab603679b2233b6d2ef00be2a516c0932c796c5998c71c2d6b2f5"

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
