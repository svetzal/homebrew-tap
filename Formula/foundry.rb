# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.40.0/foundry-darwin-arm64.tar.gz"
      sha256 "95bda08d3cac0c62097d30d3263c2ce219904d5b311835681b20fb1c43864e13"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.40.0/foundry-darwin-x64.tar.gz"
      sha256 "3507b8ca551b2eab1d4240308388789c85b69ab7ab27cc166e9538b9378c5d09"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.40.0/foundry-linux-x64.tar.gz"
      sha256 "2a8587c537b3ad8ee45df5cabcf52f8f2ddc45555dc657e82715d23fff59014e"

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
