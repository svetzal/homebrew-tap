# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.13.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.7/parite-darwin-arm64.tar.gz"
      sha256 "52c0c00e981969d09b5d55e061088aeacf4bfdd80a7cf0cc6c966dda379a531b"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.7/parite-darwin-x64.tar.gz"
      sha256 "484d258dd996e66f6fdaad740f76cf85e06cc9f09a5284c9d6e541d1e66d9697"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.7/parite-linux-x64.tar.gz"
      sha256 "c7f7528d8667e40d7d8a09eec5d1e531bbfcbb261d08b0b5fc3f02e830e0d1ee"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parite --version")
    assert_match version.to_s, shell_output("#{bin}/parited --version")
  end
end
