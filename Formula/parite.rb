# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.15.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.15.4/parite-darwin-arm64.tar.gz"
      sha256 "4a2f7142657e7a6a4200e761c064141a58de64b092042122fea571f51dffd347"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.15.4/parite-darwin-x64.tar.gz"
      sha256 "c408c342286aa9a06175e12448cbedaed052956aee572a4944a10e89cc5e855d"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.15.4/parite-linux-x64.tar.gz"
      sha256 "a45953823b8341ac7c9d21d7bab9b951b101bdc57e699a44bf1e6e6b3346b726"

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
