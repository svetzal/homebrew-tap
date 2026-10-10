# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.42.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.42.0/foundry-darwin-arm64.tar.gz"
      sha256 "29c6aef8edac9d72216665c6317301dd3ae07d10e603235c887dbf7145d22e33"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.42.0/foundry-darwin-x64.tar.gz"
      sha256 "cf8a9bbded62effd2954b2f732a8e83f2d7e0642db9ac0f9e480f967304fbaa3"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.42.0/foundry-linux-x64.tar.gz"
      sha256 "04b96c575de690997e3d6243316554d5f9b725a2bc148ae5fb85f983f11bbd96"

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
