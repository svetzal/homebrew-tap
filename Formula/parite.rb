# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.23.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.23.1/parite-darwin-arm64.tar.gz"
      sha256 "f52f365590f6085c95cbf58ffbcc921782fc5c8fa6f5323bb14adbfea5c9d326"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.23.1/parite-darwin-x64.tar.gz"
      sha256 "7cbe064a2be22b70db8788d502a6a473a4e89402a9a3953a6d9654dee45d7aca"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.23.1/parite-linux-x64.tar.gz"
      sha256 "4cc3d8a1c2c34598ee087b831783ed2d619a7c36d5b48a6ac1f6919e63f4331c"

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
