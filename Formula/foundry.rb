# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.40.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.40.1/foundry-darwin-arm64.tar.gz"
      sha256 "1de183efa7d4ae3d131fd9acc2ec3b81edb5fe83be27b4a08250bc35d06d9170"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.40.1/foundry-darwin-x64.tar.gz"
      sha256 "75df92842d0ad79641330227125d1150d6c91885002650561860c1e50c1b4d12"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.40.1/foundry-linux-x64.tar.gz"
      sha256 "14aaabef33827b49e21d630ed67ccdc2ba56bafeaf8438dc45f66ccc98a0b7c6"

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
