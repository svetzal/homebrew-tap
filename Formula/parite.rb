# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.22.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.2/parite-darwin-arm64.tar.gz"
      sha256 "4b81a60454754fb1aabd412c12c1d2a54a7c4300e58534eace3db93559587032"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.2/parite-darwin-x64.tar.gz"
      sha256 "75bbd653e5579e559851b38b66ee0dca1d292380139d0e60ee3b78906648e987"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.2/parite-linux-x64.tar.gz"
      sha256 "d7afcca91a99b1d96f37b94def3b0c795c1e1ca840f0fd91cbb136cf2b6fb665"

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
