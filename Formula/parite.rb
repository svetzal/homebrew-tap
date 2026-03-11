# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.3.0/parite-darwin-arm64.tar.gz"
      sha256 "959cedbb4453f8e6b5f6b9c7ca2609d7da091cf38beb79c37b6d7d37124ec27f"

      def install
        bin.install "parite-cli" => "parite"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.3.0/parite-darwin-x64.tar.gz"
      sha256 "59f633736fa800bc2c29752a692a379f7c5e10b7b46f28d68d24b4f0adb8fcfb"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.3.0/parite-linux-x64.tar.gz"
      sha256 "385c05b0296348e0b64141c1fc92bca58b747ddb3484f0f9fcc60565137f3068"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parite --version")
  end
end
