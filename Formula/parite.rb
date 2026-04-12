# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.10.0/parite-darwin-arm64.tar.gz"
      sha256 "1266bef531c15497f98d0f9dbae1966ead7bb8264c70ec6eba98bdb1df7d9e90"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.10.0/parite-darwin-x64.tar.gz"
      sha256 "4f143e0856c4bf295a2c221c1d8ade0b17d8848ae12a73b3d5f40b49e62a3618"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.10.0/parite-linux-x64.tar.gz"
      sha256 "e509d5126aa31df0bc955a82a5f8f833b139d57448f60b62cf69efa27c2d145a"

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
