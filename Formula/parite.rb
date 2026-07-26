# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.15.1/parite-darwin-arm64.tar.gz"
      sha256 "861aa5fa9e11f966e6700afe3f3df3854057c9eab19ca9ee50d3d63e4ad4524a"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.15.1/parite-darwin-x64.tar.gz"
      sha256 "1b6df232e2c65d084ab82556428c0baef27c09533c1a6fac61cc586d3692f433"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.15.1/parite-linux-x64.tar.gz"
      sha256 "22e60fe1c03dc207061817e99e94bf1c646d8251ad52b2fa8cc9b70210b0aa83"

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
