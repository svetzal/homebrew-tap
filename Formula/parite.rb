# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.22.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.10/parite-darwin-arm64.tar.gz"
      sha256 "1f7705fad082c7069d9ccb95c2d9b1590dad58209f2898787db1b24557609ee8"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.10/parite-darwin-x64.tar.gz"
      sha256 "30d8d71f4dee9200f80582bfff4bca555674084284c685194244a3888222fb2a"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.10/parite-linux-x64.tar.gz"
      sha256 "471aa5383d672ee92181e6975922db1ac1be1f3cfe0afd8ac3f1ffbaac77e837"

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
