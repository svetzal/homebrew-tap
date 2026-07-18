# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.29.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.29.4/foundry-darwin-arm64.tar.gz"
      sha256 "66ceba12db24cc3b84669182a447be5e6ae4e72266b2f0842f08dc731fbc341f"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.29.4/foundry-darwin-x64.tar.gz"
      sha256 "dd255cb04133a007739ec755fd830435077612e090c21d47eb92f7daba771689"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.29.4/foundry-linux-x64.tar.gz"
      sha256 "e83a1b475f67fc4d700000ef5a7f6e0a50a4fbfa9436ad3e806bde09fded6016"

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
