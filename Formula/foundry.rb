# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.29.0/foundry-darwin-arm64.tar.gz"
      sha256 "0d0fe3c80ddc2f70c9573f056ed1b4aa2e6ec5c6a8723a3284bd3424c4f70c4d"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.29.0/foundry-darwin-x64.tar.gz"
      sha256 "88f15068040e1a00d08e3e28f2a92c9e9ba724349f9d1ca26bbf05f2a004a0cf"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.29.0/foundry-linux-x64.tar.gz"
      sha256 "317e0d2cb6ed8ab294011e9475d3eefd30bacf73e857bb6f59cbb5b816c44b2b"

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
