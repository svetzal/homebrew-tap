# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.9.0/parite-darwin-arm64.tar.gz"
      sha256 "c4fcdcb8de37904eccb331394ea76cefd578f795bba337794860d7e5d2941ed3"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.9.0/parite-darwin-x64.tar.gz"
      sha256 "1dc743191e68258c28d2a4075701ea32db2ecdc3253e3c9e6430c83293c8e9d2"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.9.0/parite-linux-x64.tar.gz"
      sha256 "01142667c8375fdfebbb0b9d09fa5f5b3797203b462928f88468354d7a06abaa"

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
