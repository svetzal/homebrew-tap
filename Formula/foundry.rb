# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.61.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.61.0/foundry-darwin-arm64.tar.gz"
      sha256 "1c05817c37513a3a5a5170491f348ade1b96e066f4f57e68303b66909a5b85d8"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.61.0/foundry-darwin-x64.tar.gz"
      sha256 "ce8d6f28cd38406c5108abbbf0e4e85bf1705b379fe19793bd1e5305f0dc5e1d"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.61.0/foundry-linux-x64.tar.gz"
      sha256 "ef26dc53db9a9e67702c8fbaa314f52cb644c69a16874e30e2ed0cf8940416d2"

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
