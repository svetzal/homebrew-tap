# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.53.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.53.1/foundry-darwin-arm64.tar.gz"
      sha256 "7426efb43de586f83b9190441297a9b23729b7f33416d80fd7f1c4970847c1f3"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.53.1/foundry-darwin-x64.tar.gz"
      sha256 "64b610fea469e4f5f97c294b966bb1ab8f41c1b636153715b506c52c7dd907b0"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.53.1/foundry-linux-x64.tar.gz"
      sha256 "eedb6d5859cddfaaa5b284233f6072a699a64eb31f12d7ea394a822c76485255"

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
