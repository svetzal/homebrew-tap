# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.21.0/parite-darwin-arm64.tar.gz"
      sha256 "c1ed316770cbead4dd9bd4ab11c9115e49c33f03f984ad084c53576076475c27"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.21.0/parite-darwin-x64.tar.gz"
      sha256 "0bdf885261c2d0684b987e53fa2c4f53914fab55ee030af8439c7bc9d6f38000"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.21.0/parite-linux-x64.tar.gz"
      sha256 "cd8ed26df896609f71ef5777dee45295332f6ad07b35d597e8b47fad3caf5dad"

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
