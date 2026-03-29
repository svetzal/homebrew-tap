# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.6.0/foundry-darwin-arm64.tar.gz"
      sha256 "7a5b9b3a2fe7a4853d1ff1af0ac3306cf743e99ece40ae15001074595399c3bb"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.6.0/foundry-darwin-x64.tar.gz"
      sha256 "0e60fda259c27fa9368b4c2c4edab78e1dd6b479996f0beee015814a09d123b5"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.6.0/foundry-linux-x64.tar.gz"
      sha256 "32db9e4d9433d05ca67ff2724d53844ecc92fc3af31ccb8fabc69fbb815d09d1"

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
