# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.30.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.30.3/foundry-darwin-arm64.tar.gz"
      sha256 "a58c117eb4628ab573c0d1ecfac976ac01ad9e2843a9133443ceb3507c9c1636"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.30.3/foundry-darwin-x64.tar.gz"
      sha256 "85bdb2a4c707a9d7a53c8cb82d72b8fe1b8f65e4cdd84c80dc5d76d4dfe00a41"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.30.3/foundry-linux-x64.tar.gz"
      sha256 "f129afe6e345b9fba37d66119cfb957daa82a5760c0c8c1935670e4d2e0f06d1"

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
