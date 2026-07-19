# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.13.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.6/parite-darwin-arm64.tar.gz"
      sha256 "d31becc9050bd8dc4c8b7e8b8c5496943677b61fd6aecc5726e693cfc05cbfab"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.6/parite-darwin-x64.tar.gz"
      sha256 "13731b5d80a8d58031d94ad981253ff4e87e7aa11aeb4b008717f33752e78034"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.6/parite-linux-x64.tar.gz"
      sha256 "add95948f854611234856a76e4e7a68c2c080a689ceb717b301e41fa1aab38a8"

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
