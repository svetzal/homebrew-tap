# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.49.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.49.0/foundry-darwin-arm64.tar.gz"
      sha256 "a6e33d9913dfdc3cba068e9ae7fb74882fb086254fd0ea0951c7d913a0e6faf5"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.49.0/foundry-darwin-x64.tar.gz"
      sha256 "82683ed50d7105cac35414d56b80a62773ba800b2e59fb4ab075b046df4ae489"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.49.0/foundry-linux-x64.tar.gz"
      sha256 "6f869e55e3f5a1bf580abb9d03981277c2c0e5c945e3d578d87230a60298f34a"

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
