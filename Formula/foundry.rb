# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.44.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.44.4/foundry-darwin-arm64.tar.gz"
      sha256 "e20dfd9115d58f207414cc8d621a2c29cf56fc8487b28c0b8fe51880b222a220"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.44.4/foundry-darwin-x64.tar.gz"
      sha256 "2dee5c86f14a59a8ef3a95109e34bd12d852eb790bf13c76e7ed86a9e881a133"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.44.4/foundry-linux-x64.tar.gz"
      sha256 "8c43ca0ee18fc569496400b11ce08f3605f9a6ba63a604c3b07982484a8552e3"

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
