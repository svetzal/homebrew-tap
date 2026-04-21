# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.11.2/foundry-darwin-arm64.tar.gz"
      sha256 "55e7b82df5de6112740b4ff33add10fb7b5dc0ce9a2a7bb3c0f2c1f2d5c1ed68"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.11.2/foundry-darwin-x64.tar.gz"
      sha256 "aae9fe1d188f3785c24e25ea0c8f1410f2893585126c3b85f88e5bd44565ddad"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.11.2/foundry-linux-x64.tar.gz"
      sha256 "ce27ca154c354bad82e585827cee086c264c2a92a8337acb8382b678894e55f0"

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
