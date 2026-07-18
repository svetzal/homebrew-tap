# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.28.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.28.2/foundry-darwin-arm64.tar.gz"
      sha256 "75bb34d814b02c9b545a06f827c07ba774e5ac968ef023fe021f7519baae594b"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.28.2/foundry-darwin-x64.tar.gz"
      sha256 "34df1c97eb7e8008bf99cd7e19bc23a0c11c688d953055a09b5334c00f680848"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.28.2/foundry-linux-x64.tar.gz"
      sha256 "c607b78cd9346603bfdf4a2855f6a1ac68e6d6687432be5de117e156c8b0c0c4"

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
