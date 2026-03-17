# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.7.0/parite-darwin-arm64.tar.gz"
      sha256 "393a2d3123250f27fb576a629e46499a3d845546eda38f0256a80a39cd307b10"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.7.0/parite-darwin-x64.tar.gz"
      sha256 "4b5e6e20e787f61ee1a47e4770cd8183825c824abdcc8b29b397848853def2e5"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.7.0/parite-linux-x64.tar.gz"
      sha256 "2d9a32e5df31cb9505b4daf40790bec2d2a78a13c994df5ec13fdc4eb214a819"

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
