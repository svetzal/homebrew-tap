# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.45.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.45.1/foundry-darwin-arm64.tar.gz"
      sha256 "7d647ec54d7c727ea817624df187f295d442b02466559d9977c101d597f81e39"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.45.1/foundry-darwin-x64.tar.gz"
      sha256 "ebea33c4b331d4ac7e81c595f082f4e07167d2ee61acf9479341939905ea5fb5"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.45.1/foundry-linux-x64.tar.gz"
      sha256 "e26bc34cd4d3a4fede78e29ad64099b1b3a31c4035b0584cf7ea5a9fa004e9b8"

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
