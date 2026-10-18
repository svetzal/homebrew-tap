# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.54.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.54.0/foundry-darwin-arm64.tar.gz"
      sha256 "5aedc12f49bf3ef3c953480eb26061eee74bba1dc4a733033fdc7f4b8f03c27e"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.54.0/foundry-darwin-x64.tar.gz"
      sha256 "12467a741e65fca07b7dde6d5176080ef69cbe449ba118705dac4df05d8714ca"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.54.0/foundry-linux-x64.tar.gz"
      sha256 "a0544d5e0b865caeece8a46e52aef822c66fe9eb104ca378ac710f9cf0010bd7"

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
