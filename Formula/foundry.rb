# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.17.1/foundry-darwin-arm64.tar.gz"
      sha256 "51f4f56d7c1aa9f1e37cb575fcc532e30cc92dc41110c3a96c3a3edee445f5e7"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.17.1/foundry-darwin-x64.tar.gz"
      sha256 "f42702df9ee5ebc30a66317d7b62cdf0005da0166063caf04e1e73c18a33df04"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.17.1/foundry-linux-x64.tar.gz"
      sha256 "85a127caea639b268ab3045be4565e24041609ca3f7f42c453cf6e9a789dd610"

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
