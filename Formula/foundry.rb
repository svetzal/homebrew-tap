# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.63.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.63.0/foundry-darwin-arm64.tar.gz"
      sha256 "b2bee6bcd69685b0e145621d5eae290d425b3ef8e95e44c99311335a724acd25"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.63.0/foundry-darwin-x64.tar.gz"
      sha256 "295e67cc18074c32f8afb2ddee8d73bc88d68f2262fc3ae443f5245046e1ac73"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.63.0/foundry-linux-x64.tar.gz"
      sha256 "a88d12413eee97457edafe1d40c3f8bbfbbbcef5ab409de5f8283009d338458a"

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
