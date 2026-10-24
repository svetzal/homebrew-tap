# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.57.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.57.1/foundry-darwin-arm64.tar.gz"
      sha256 "5198a5cd1c4d79559b8072036d5a304b796ed1b1d311deae52b0382172e524c8"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.57.1/foundry-darwin-x64.tar.gz"
      sha256 "9df0a702e3f21143398a8d33926c6ac46b515b94411e11abe2f7db12b38479de"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.57.1/foundry-linux-x64.tar.gz"
      sha256 "36e466934c2aa998d8e13000b34fc2903b093c6c0e32f8e236893a3a1cc8ea2d"

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
