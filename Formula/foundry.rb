# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.4.0/foundry-darwin-arm64.tar.gz"
      sha256 "c80a9e4aa0d6d105868be555ec0d875ad895788426267f5ab819876d79993069"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.4.0/foundry-darwin-x64.tar.gz"
      sha256 "7840de1c82ddf2e9c944d0837d5d1c83b389b0a288bdd675f03f83593fca4a99"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.4.0/foundry-linux-x64.tar.gz"
      sha256 "56c4cd40fb2da9d9865e6136473754b638cfbca4e88cf1a2cd0fa8742c914a96"

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
