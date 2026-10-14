# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.50.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.50.1/foundry-darwin-arm64.tar.gz"
      sha256 "101ef231285ef9333b406874375c5f664979d7b400ba8076129e6f6ba3c6b73a"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.50.1/foundry-darwin-x64.tar.gz"
      sha256 "cc9da17de22d9d531805a1af3406849addcee6c2ebe38e83f96dc9186199b803"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.50.1/foundry-linux-x64.tar.gz"
      sha256 "f1c161c00eeb93fd8591575b3734e56ac3f98e6be10ae69e45e3c08785f8a959"

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
