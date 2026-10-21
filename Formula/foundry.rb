# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.57.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.57.0/foundry-darwin-arm64.tar.gz"
      sha256 "0b1342491982bb50411eeacc5e8de7f9d5c56a6641985f429f1307334fca925c"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.57.0/foundry-darwin-x64.tar.gz"
      sha256 "c9dd8a9e5bb9756c63d4ba8742fa4967a9f5320f073c0cd53e9ad8dc4b475af9"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.57.0/foundry-linux-x64.tar.gz"
      sha256 "1b61ba0685b3559580ac70d12389dee6705ae9218c620ce0156a41fdc22fd6d4"

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
