# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.22.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.6/parite-darwin-arm64.tar.gz"
      sha256 "2123ecf51cb9d88e34fbf7d39eee67bfcb7f043a795cdb9ceef03cd5f6f28025"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.6/parite-darwin-x64.tar.gz"
      sha256 "cc63928c0235f274f87adf4eab3893dfb6be564a270bc3548ad21862df00ab77"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.6/parite-linux-x64.tar.gz"
      sha256 "93e6056be38d1bd8141c0b1a0710d4d6d13763ac35b7ada426c4136f5bd51d1e"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parite --version")
    assert_match version.to_s, shell_output("#{bin}/parited --version")
    assert_match version.to_s, shell_output("#{bin}/parite-converterd --version")
  end
end
