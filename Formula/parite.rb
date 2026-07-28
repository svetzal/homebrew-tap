# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.15.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.15.5/parite-darwin-arm64.tar.gz"
      sha256 "986c1b35ace41acee4c37a47f9fb6d7eb6acd1d932d529eefd5c2b19497bd6ff"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.15.5/parite-darwin-x64.tar.gz"
      sha256 "bc7e4ac23996670ba31d82199745e61106a276fa8888b123ebe8ea339c807282"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.15.5/parite-linux-x64.tar.gz"
      sha256 "ee782e5313fb68f4b4bc543a21f9b41a2cc89c4c3f5f2416a82e7cac70c44f64"

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
