# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.30.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.30.2/foundry-darwin-arm64.tar.gz"
      sha256 "791f2542ac033dfdf12e742e178b6857740b01ca6d6fd7e41124bae3e16e7a18"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.30.2/foundry-darwin-x64.tar.gz"
      sha256 "04783531df4ad3eb7a3fd44b814afec111391be4fe232a3ec3fe90e88820b59c"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.30.2/foundry-linux-x64.tar.gz"
      sha256 "4f0e6e82c02936d90d73f988bd0afb376f9f7510334ce742070882fd27131864"

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
