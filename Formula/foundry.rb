# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.39.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.8/foundry-darwin-arm64.tar.gz"
      sha256 "24e5aca448aab386f9f59ed44d416c24ff9cd0e488fbfbdf4d8d79c6b175876e"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.8/foundry-darwin-x64.tar.gz"
      sha256 "d025dd82c799eb291c437fbc8ce4682c602c37d7a2cf471949b086f33fd88d69"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.8/foundry-linux-x64.tar.gz"
      sha256 "b7cdc874c51e6f3a80b36b02612f776726aeec0b6f88d0cfe6a89ebab35d4b1b"

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
