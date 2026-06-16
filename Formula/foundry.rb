# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.26.0/foundry-darwin-arm64.tar.gz"
      sha256 "e645b5bd37d262137555e9288b8af2b87f87ee207743ab7e2af3f6160d59c779"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.26.0/foundry-darwin-x64.tar.gz"
      sha256 "851a6af87a8540e21768c4722b00d2ed2be83795b9308e6f78cc3f77e3b2d797"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.26.0/foundry-linux-x64.tar.gz"
      sha256 "777a456ec6d86b92e22923b34b2f41e26cb74ba27cd8986a4188b655b490ccd3"

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
