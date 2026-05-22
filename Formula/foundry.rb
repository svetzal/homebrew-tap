# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.18.0/foundry-darwin-arm64.tar.gz"
      sha256 "d89374bcf2e934d9de08f98238f08af1e20849fc3007756a98da5e645a1d81e1"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.18.0/foundry-darwin-x64.tar.gz"
      sha256 "19387e6628c320dc7edcad6610d87c67a3838241fc08f59d619d6e2b1e06052f"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.18.0/foundry-linux-x64.tar.gz"
      sha256 "ac82c5d72f4e677b54cfc4a8a1cfc73fbf2752955176e7d5bf0c8caa0f41caa5"

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
