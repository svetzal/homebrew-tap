# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.11.0/parite-darwin-arm64.tar.gz"
      sha256 "fca917d7efa7f90c22a6b380f3100fd347d98533dcb68ce12408576e11e0e1d6"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.11.0/parite-darwin-x64.tar.gz"
      sha256 "12af1d12aa42fc9a177f81069c7055b572226ab0e92e4e6d63ccdeb8bdbc8b63"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.11.0/parite-linux-x64.tar.gz"
      sha256 "9e6fa719b5271eaac855ca714ab34ebad93686bec99fea8c32eee06ab443184d"

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
