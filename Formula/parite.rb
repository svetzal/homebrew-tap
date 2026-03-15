# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.6.0/parite-darwin-arm64.tar.gz"
      sha256 "4fe0ef48445dc9ec0533aa08d57a4aac1bdaecfe94e76fcc27b791c98f7ff16b"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.6.0/parite-darwin-x64.tar.gz"
      sha256 "b3644d7e6451ac8b3c8978091499ff888d48228e9faa6f01f7c17375dc1111cd"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.6.0/parite-linux-x64.tar.gz"
      sha256 "87fa1d09b3637ac73702a74d741d03599fda57fcccbebbb7f4e02e437a3e3b0e"

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
