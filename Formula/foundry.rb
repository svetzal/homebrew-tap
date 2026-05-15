# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.17.0/foundry-darwin-arm64.tar.gz"
      sha256 "f5b37cad0860c1d495c6d4fb965dad02b4dc9d97be49c2079934e4de814d8844"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.17.0/foundry-darwin-x64.tar.gz"
      sha256 "d06406d69c2dc2453a0f574c9ed5af0f4d1ba4b47bf9510985873dcdcc9b07ee"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.17.0/foundry-linux-x64.tar.gz"
      sha256 "9f308aed257d3a8bd8f7a1c1b40c5a1357e1adaaee13537fa8e62ef384e2ddaf"

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
