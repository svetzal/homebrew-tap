# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.52.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.52.0/foundry-darwin-arm64.tar.gz"
      sha256 "3d71a735131255b67b0a8603fe112f2200ba2ea0c42a62477e7b9a75bb0b6a50"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.52.0/foundry-darwin-x64.tar.gz"
      sha256 "b8b6bd2a439919661812d7ea0c5e398441ef3966f91a37db90d25aff3d61b43e"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.52.0/foundry-linux-x64.tar.gz"
      sha256 "ce679ad600d9b60c8811afdede1b03a463ea444f91d2fc7bf20cb5f4264b1eab"

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
