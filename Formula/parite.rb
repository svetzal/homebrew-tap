# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.23.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.23.4/parite-darwin-arm64.tar.gz"
      sha256 "8e03388f99254f60f4bb3d8373cacebad36aa69fe5c65d8ef3ea7fb3abd194b9"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.23.4/parite-darwin-x64.tar.gz"
      sha256 "e79142aae166fbcffaeffd12bb97711cad81733bffce7dbedcaae6a1ab60a689"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.23.4/parite-linux-x64.tar.gz"
      sha256 "685461aca134a7f0a1d7810083193e4a63c1d132a2b1c933ccfbadaf097be7bd"

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
