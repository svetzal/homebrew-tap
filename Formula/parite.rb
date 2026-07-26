# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.14.0/parite-darwin-arm64.tar.gz"
      sha256 "b30cc50890c9bf50b8831902a6712b2867607c31a5d50bb83569b085a1c4c492"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.14.0/parite-darwin-x64.tar.gz"
      sha256 "7af0d19ee89e6066653eeec29d9fced737dcbeee6d4cb09373700720922a49ef"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.14.0/parite-linux-x64.tar.gz"
      sha256 "f41f8113894891724b319c940c1c045311bf1f66f4ec29a1485b29bd9a1cb83f"

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
