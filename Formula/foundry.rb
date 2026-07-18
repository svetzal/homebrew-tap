# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.28.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.28.1/foundry-darwin-arm64.tar.gz"
      sha256 "eaf25f00471a47c13d55c726c3a110c973ed30d5c132ebc473a283d7d10093ab"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.28.1/foundry-darwin-x64.tar.gz"
      sha256 "1f046614dfe04c455c0653df0624be1d7ac7c0761a31fe2bdb727267cb61c689"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.28.1/foundry-linux-x64.tar.gz"
      sha256 "f22b6afc21f62b611669d98ee2559dd3909b546fbe2cb56871e7d082a88bdf95"

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
