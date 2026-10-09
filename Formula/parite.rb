# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.19.0/parite-darwin-arm64.tar.gz"
      sha256 "a35bf99a43850af7a8bec7e3bbe8deba6e095c301ba8e60f47677dfc6eb440a7"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.19.0/parite-darwin-x64.tar.gz"
      sha256 "16617149aa5c995b49d5126ac606c5e05049c891b45f47565a062a345ee1c526"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.19.0/parite-linux-x64.tar.gz"
      sha256 "9745d961d0fef795ea8eec701e0b59f3777de6afd0935ee055b697fa88c5bbc5"

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
