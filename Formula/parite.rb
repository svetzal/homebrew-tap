# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.8.0/parite-darwin-arm64.tar.gz"
      sha256 "4cee6de50d500ff9a1ea86511e8ba71816d0c9b5f13845a5d0eeb2a763431a3e"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.8.0/parite-darwin-x64.tar.gz"
      sha256 "71ea0041c7991e66df059efb05804b7a3ba774596e004007e689ae4f090138d6"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.8.0/parite-linux-x64.tar.gz"
      sha256 "fa0309997274e8ae84f1d43e7844a5e210478ae698fbba8f95863755bc80ea3b"

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
