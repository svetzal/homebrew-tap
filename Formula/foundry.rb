# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.39.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.3/foundry-darwin-arm64.tar.gz"
      sha256 "42547822e21ac3f86f75e58bb5d0873baaac96f3d71e5084c93d3e6ac3aba342"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.3/foundry-darwin-x64.tar.gz"
      sha256 "bcf473492d447b5d55e3c3d39f4a3ae44f05c89e0bded85cb7809fd1361daab5"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.3/foundry-linux-x64.tar.gz"
      sha256 "5ec0b4e3628b96abc69f3d3c4a72399f88b19c9fe388edfeb3b37f52c3b93958"

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
