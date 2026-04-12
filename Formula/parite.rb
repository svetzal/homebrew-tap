# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.8.2/parite-darwin-arm64.tar.gz"
      sha256 "149ea1c3286b70c24aceb1557726d24e63c4feb3bdcf606d69d6f329b608d47a"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.8.2/parite-darwin-x64.tar.gz"
      sha256 "07c7f9af3f4599f28185ba4f175867fe577c2a0c5222943c5d13279ec0c4e0fe"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.8.2/parite-linux-x64.tar.gz"
      sha256 "051b7249a766ef47d55c5f2d18146568de52c06465733e5c9f8e09a3aef3391e"

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
