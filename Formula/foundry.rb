# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.39.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.4/foundry-darwin-arm64.tar.gz"
      sha256 "225d6b6e7a96926566ff0c4dcda256cab219d67283a3826d22ba249ce3b74e51"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.4/foundry-darwin-x64.tar.gz"
      sha256 "6a94d221988ed2ae42bef8f12195b48495795e9b2d2e78208066c73fd737141f"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.4/foundry-linux-x64.tar.gz"
      sha256 "63b9316d2ac5fd3cb77c1102743e30ddfc80e6fda80dded5130ff9f2989bd847"

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
