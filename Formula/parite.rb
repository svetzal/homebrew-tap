# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.13.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.9/parite-darwin-arm64.tar.gz"
      sha256 "cea0aad7225aedb360c2db2e9309ae16ffdd06082696eb3e984e1ad58b4d4bb5"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.9/parite-darwin-x64.tar.gz"
      sha256 "b2f065acbc159d43f0f791901bc073c671e830fd382f48c2ede89f13bfcc5dea"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.9/parite-linux-x64.tar.gz"
      sha256 "2c8517ab7f539c33fece99207184559e4a47798ddd6e47e9fdb784002ba41cd6"

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
