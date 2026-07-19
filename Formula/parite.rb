# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.13.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.2/parite-darwin-arm64.tar.gz"
      sha256 "14c7d9974444e5e103ef89ba2963927cff05ecea44fc9c893107b478b2a37482"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.2/parite-darwin-x64.tar.gz"
      sha256 "c25b9b975d326cb842dd0552b007e9a7c40b9693a0ae03a963687251cc7c20c5"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.2/parite-linux-x64.tar.gz"
      sha256 "b1daa10da22efde8b7984a36c00e373db256dc62a589e3ddf6ccd416b995972e"

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
