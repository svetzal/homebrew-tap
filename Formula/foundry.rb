# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.31.0/foundry-darwin-arm64.tar.gz"
      sha256 "4e6496155764d9c19f7ae52e80919e28c423ca1c379180b72cabc1156a97d696"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.31.0/foundry-darwin-x64.tar.gz"
      sha256 "a93ebf4a77f3a4beb86265267a8c14bd7efff362470b5b58a233367562ba0b9e"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.31.0/foundry-linux-x64.tar.gz"
      sha256 "8ebbb06e337ebb8425f14277602eac17bde299d8819a216266b785c8921dd821"

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
