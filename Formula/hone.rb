# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.2.0/hone-darwin-arm64.tar.gz"
      sha256 "bf2c9ccfc532c4aed822ff12481c4ab6c5cc12bde3303f68e9c0ab86693bfc88"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.2.0/hone-darwin-x64.tar.gz"
      sha256 "5c435cba8896685bda4f5d2b250bfd374835971633fcbb7a1adbd369ca9eb716"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.2.0/hone-linux-x64.tar.gz"
      sha256 "fd53aa68a2c49b2d6b062fd64080e95c272949056af790ef9ccda0fad95c4942"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
