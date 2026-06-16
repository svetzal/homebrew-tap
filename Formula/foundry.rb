# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.25.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.25.1/foundry-darwin-arm64.tar.gz"
      sha256 "799cbdc08d808414a5e0c634a7d20039fe9feed2fa9e3fbe78a314c83227549a"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.25.1/foundry-darwin-x64.tar.gz"
      sha256 "1a68b2960caf68d80573d96f5e75c39ade8a926e1a0e8f586f32ddc6309bc47f"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.25.1/foundry-linux-x64.tar.gz"
      sha256 "109b70a5d365a79763f87982570222c0852cc156934fe074b410b8ad4ea6b37c"

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
