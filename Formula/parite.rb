# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.13.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.4/parite-darwin-arm64.tar.gz"
      sha256 "e2524a3b39662b8f2cf6ef47bf3e48e35957369e962836b97513633978cf148f"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.4/parite-darwin-x64.tar.gz"
      sha256 "aeece74ce098f30e5ed31f1d278c243d6e8095711134fe52fa6bfff1d1c7462f"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.4/parite-linux-x64.tar.gz"
      sha256 "827db241f48746823f35a089cb0247e5415324c6c1874925ce148ddc9d996613"

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
