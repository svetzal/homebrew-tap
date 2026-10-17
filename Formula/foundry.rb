# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.52.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.52.2/foundry-darwin-arm64.tar.gz"
      sha256 "241dab40b6f2b12947eb6a27a19f31144ea6e5c45e48375b0f2a64800de5c9c7"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.52.2/foundry-darwin-x64.tar.gz"
      sha256 "251378e72b31f757ad28a1d9f0d66ed3b44cae2f8f1a6285373984913ee97022"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.52.2/foundry-linux-x64.tar.gz"
      sha256 "5f2fb7dfa15deafacd6a91dda6adb93d38f6ebb7012020a7c723350330816314"

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
