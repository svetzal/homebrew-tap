# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.0/parite-darwin-arm64.tar.gz"
      sha256 "f64014f12d1fcb1b7bb32ff46ceb72a2544febedd7076769afd76af744a26109"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.0/parite-darwin-x64.tar.gz"
      sha256 "1cdd9c960a4b3bc8c88a87fa6f238119d055dd16bed284f46881cc7a1c993132"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.0/parite-linux-x64.tar.gz"
      sha256 "a888e4652f9bf7b99025b9278b7a6acdc40754640c2cedee9c0c3a4e8bfcfb31"

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
