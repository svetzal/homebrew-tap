# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.58.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.58.0/foundry-darwin-arm64.tar.gz"
      sha256 "fb945644bca168ba75a34b4cd9345625abfa967090f05c226cee6de76e248d38"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.58.0/foundry-darwin-x64.tar.gz"
      sha256 "c388654ace97363560b9f502c17bcb77ebe1e865575b4e980ffba608075597c1"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.58.0/foundry-linux-x64.tar.gz"
      sha256 "b0aa1c5eb86a890b3d348f33304b8e465dfbe8c869726514a2291ac6f4ba0bdc"

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
