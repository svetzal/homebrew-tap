# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.21.0/foundry-darwin-arm64.tar.gz"
      sha256 "c92b37f5fd2b9adbf8bd65cbe2e4baf846f3b76ec3380eb4dc89f3562d87c93e"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.21.0/foundry-darwin-x64.tar.gz"
      sha256 "2dc9836e5b2d91c250748dcb4047d5b4b41800b6d0f3471bf5deae8d2eebcdca"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.21.0/foundry-linux-x64.tar.gz"
      sha256 "1830b1432b944c855add69ce065bb079e2fa7736496c4f0efd0a0a19e669df5b"

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
