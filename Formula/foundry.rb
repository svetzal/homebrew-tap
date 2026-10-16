# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.52.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.52.1/foundry-darwin-arm64.tar.gz"
      sha256 "0e1d962f3c172f66f554f566489ba97847bed57c91cc7c6f4bdc4a6bfb3f346b"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.52.1/foundry-darwin-x64.tar.gz"
      sha256 "5ddbc47359d2f3604f5370f05b7bff881454bc5c8e557937a50ae230a2411290"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.52.1/foundry-linux-x64.tar.gz"
      sha256 "7be47c258a4ba5947a6e93c0bb73191d69def82f58e78afec7dc9ff3fe224aad"

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
