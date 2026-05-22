# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.18.1/foundry-darwin-arm64.tar.gz"
      sha256 "41688d3fdfb611f18a19952d1f89db7fcc55e42944ff0b6b5b670f2d31124c64"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.18.1/foundry-darwin-x64.tar.gz"
      sha256 "29ffb6a8a5a20f3bfcb1c60f275174a6fbbe95dd0cba8286092cedf2db32a245"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.18.1/foundry-linux-x64.tar.gz"
      sha256 "b9b587b77ede5d6f5b71e83483f0b747b3771632b8744c4dc62c62376d67a1f3"

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
