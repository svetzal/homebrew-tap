# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.40.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.40.4/foundry-darwin-arm64.tar.gz"
      sha256 "674a5b589e4442df7c44a2fb4564e2cd498e70b2669b0110749fedbbbc30b1b3"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.40.4/foundry-darwin-x64.tar.gz"
      sha256 "1665bbd340657533e31a8472e02ee13faf5d81488210e29978e69dd6bed8343b"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.40.4/foundry-linux-x64.tar.gz"
      sha256 "97d13805e59a722c3fff02d102ed8ed577a1edf8bd6b440327d6a1143dd25d85"

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
