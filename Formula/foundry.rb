# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.58.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.58.1/foundry-darwin-arm64.tar.gz"
      sha256 "1993a0017456919ea92278876247e4791a9c86422eb6d663b6b434c055901384"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.58.1/foundry-darwin-x64.tar.gz"
      sha256 "0141c69b87cc34e61d2ed8a777ea97dc10e203170f15d18ba062c5578dcba0ab"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.58.1/foundry-linux-x64.tar.gz"
      sha256 "ae64e5f49b95f7d9f8eb91a993a3cafb5f1f6ed709c866f2f542a41265a8512c"

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
