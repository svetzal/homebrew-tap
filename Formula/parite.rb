# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.20.0/parite-darwin-arm64.tar.gz"
      sha256 "0eca65a88cac29ca1c987bbf8c061d7dad5d79121e903c53598c7295585befbb"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.20.0/parite-darwin-x64.tar.gz"
      sha256 "2005c1e6d9285edc6b85f31806b8b5b144aab8fefac8a6c86b17723f041b774f"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.20.0/parite-linux-x64.tar.gz"
      sha256 "231f71a6fa9dc8606b528475903a7c4fbb6098c8a139c853796cb2724d6bd3f3"

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
