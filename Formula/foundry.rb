# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.38.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.4/foundry-darwin-arm64.tar.gz"
      sha256 "7c2aecc3c31106bab25d8703c554723cde179c7c1f7d1600a9a24eee147370c7"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.4/foundry-darwin-x64.tar.gz"
      sha256 "b7dd0cb35869ec8ebe2099fcb24d5fdfee50b14a6ac5b6a69536e1aef5512f13"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.4/foundry-linux-x64.tar.gz"
      sha256 "8855956bdc2aedab1f10406bbac056c4973591913294a3b1a34bc27262b1ed7d"

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
