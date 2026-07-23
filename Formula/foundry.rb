# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.32.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.32.1/foundry-darwin-arm64.tar.gz"
      sha256 "60752d7e9fb22af724810711287eded314b119e9e369425aca0f6b709dc1558c"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.32.1/foundry-darwin-x64.tar.gz"
      sha256 "29d14e369bc02205c40163655f74b10d9f8c42b6a25decc22efd873275863d1b"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.32.1/foundry-linux-x64.tar.gz"
      sha256 "86019bfe657d2296d59849758e8d3b8eb71708de976b4754c4e691431b6a7f8e"

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
