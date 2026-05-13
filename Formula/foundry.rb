# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.16.0/foundry-darwin-arm64.tar.gz"
      sha256 "3349619555f91cc6b5cda3827f964f5ab4879167a830f389abc4be0afd780629"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.16.0/foundry-darwin-x64.tar.gz"
      sha256 "6d6df66100aa68bfea20d3a612f48823d50be6ea9e5e02b8c0e19cc4af7a21ce"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.16.0/foundry-linux-x64.tar.gz"
      sha256 "de2290569868cd2d13f781265217a7a4e28e81fa6dbb1f370015fafb25261f06"

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
