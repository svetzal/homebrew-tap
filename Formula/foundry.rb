# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.35.0/foundry-darwin-arm64.tar.gz"
      sha256 "13d6a7f26117290d294cebe73b7f99cc6ce39c70f586b97f601afeab62821f17"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.35.0/foundry-darwin-x64.tar.gz"
      sha256 "758a145d3e7af45b374841d03c387b2dcb94e9c5d5ef8531dbeed4b4aaac1f36"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.35.0/foundry-linux-x64.tar.gz"
      sha256 "3dc5ac5ff249ff108f7738f312895ef7cf91688ce491e4d063abc188c22255df"

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
