# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.9.1/foundry-darwin-arm64.tar.gz"
      sha256 "b40288fd149ee961d42c8dbb3bec6506306bf750afa2d86cda5347c79e3a2df8"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.9.1/foundry-darwin-x64.tar.gz"
      sha256 "7700e5b8e1b6ea40837f8117c77b667129a959f3bf4c3a4d6e1f20154c234d10"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.9.1/foundry-linux-x64.tar.gz"
      sha256 "bb55bb44d27b288288d542de752e0e21e0b3d61d02540e4b7741832dec52d623"

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
