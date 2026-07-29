# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.15.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.15.8/parite-darwin-arm64.tar.gz"
      sha256 "36eefff91adef2cd72083a302631e0835c7e53c9c84fbeba1033a88ba0e1bb25"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.15.8/parite-darwin-x64.tar.gz"
      sha256 "d4b2c9e846631b043f8498aa40f3e60f160c4eb8049b5dffdea72ae5bcf0b21e"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.15.8/parite-linux-x64.tar.gz"
      sha256 "c443efccbee327706667610226ad10124ce0f5d3cb14aa6bf42e2a47ee3e4e5a"

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
