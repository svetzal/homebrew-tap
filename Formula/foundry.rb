# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.34.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.34.3/foundry-darwin-arm64.tar.gz"
      sha256 "6a38667df42bc14aae27ba50e310c2fffecb6eec1c95b2670a2d392738587934"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.34.3/foundry-darwin-x64.tar.gz"
      sha256 "3f5e9357fea134865cb2a80b03bf0d5bbb7217de864b09330f6dbdf06ebb7fad"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.34.3/foundry-linux-x64.tar.gz"
      sha256 "b3f8fb5d99abc4d5e56b60cae8fe049ac8059de9c40cd6e9bf6fcaedb5ac39a7"

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
