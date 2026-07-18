# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.29.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.29.1/foundry-darwin-arm64.tar.gz"
      sha256 "86656bbb579370734e1743358bb2a639da250e2c80c0eda7bd3fe1fbeb54ed27"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.29.1/foundry-darwin-x64.tar.gz"
      sha256 "3d4a9bcedd4976e6a5035491c270222984b9d929d996ade8b3d0e148d31032ac"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.29.1/foundry-linux-x64.tar.gz"
      sha256 "75602cc81b37f3ab9e72fb25e69bea8ccadf9d62960c37b0368a1bd668506c16"

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
