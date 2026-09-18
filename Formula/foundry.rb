# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.36.0/foundry-darwin-arm64.tar.gz"
      sha256 "d8a65e0df2116d7cc7b762777b78066429a11e360a3e8d95293d0fb003d1949d"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.36.0/foundry-darwin-x64.tar.gz"
      sha256 "d633590d0fe42f06147de3e1a56da4e127f1b81152417e7c94ae55cb4f874ead"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.36.0/foundry-linux-x64.tar.gz"
      sha256 "865ca55442deaae52fdb176bfd04863b83230d23617a6a6ab89011979121bad3"

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
