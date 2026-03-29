# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.7.0/foundry-darwin-arm64.tar.gz"
      sha256 "7c498311c35c719d2409c7bbb0a9677d6ee8b729b7c7e31fda6c7c9254bb0957"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.7.0/foundry-darwin-x64.tar.gz"
      sha256 "13801700ecd7d2c5fb456631c8104d97b39ef3397b99ff093f1a9525d98213cb"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.7.0/foundry-linux-x64.tar.gz"
      sha256 "b6f916d8584505b29fde69dcf9a54397ff743afe450903c68daeb33604f551e0"

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
