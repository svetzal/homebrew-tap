# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.1/parite-darwin-arm64.tar.gz"
      sha256 "066e476cbb746bfe9d9a879342077675a3a42e03f5c430a730e277cdc16bff93"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.1/parite-darwin-x64.tar.gz"
      sha256 "814542a737741bbf232118852d7a2199965b79799c827ad14778cdd1231a52bb"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.1/parite-linux-x64.tar.gz"
      sha256 "ed4e2ff1e9a32aff071f959deaec195a41a4c3121e190636e825eb1e25caeb5d"

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
