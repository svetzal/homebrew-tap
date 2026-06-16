# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.23.0/foundry-darwin-arm64.tar.gz"
      sha256 "1f8a9a9daeff93f6637a957a6e8fd091fe10d83e522e12bcc4670c582d698f0d"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.23.0/foundry-darwin-x64.tar.gz"
      sha256 "20aadd6733d88b3127148ff0573e33d4609d1eea0bb859430c37af11725402e2"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.23.0/foundry-linux-x64.tar.gz"
      sha256 "07735f28aced3e0680bb55125ef214983c7d55eb84eb35a2045f72e0c92ea2ef"

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
