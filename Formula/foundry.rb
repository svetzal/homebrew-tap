# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.26.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.26.1/foundry-darwin-arm64.tar.gz"
      sha256 "e1155fc9dc262a1a325fa6605fcfa3cf4c2c02efee7cca5ba80edae73fc8f289"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.26.1/foundry-darwin-x64.tar.gz"
      sha256 "fb16503ec3366cef9f5d0f701fc06217ce65ebb340b7989f4bf5c5a9b15e40fc"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.26.1/foundry-linux-x64.tar.gz"
      sha256 "aa3dd45f10775249b00b03f7372de105b39b4e3986c6cf8a701e9d2082e7863f"

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
