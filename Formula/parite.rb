# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.22.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.9/parite-darwin-arm64.tar.gz"
      sha256 "22c91a0a63c091da80f5b5e97a1a9a1b67be189e47eb24414ada7a6714e03d33"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.9/parite-darwin-x64.tar.gz"
      sha256 "ff7e08d198d4efb0db4f90b36c832fe4e9af37c2eba727a2e6f91cbccc43743d"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.9/parite-linux-x64.tar.gz"
      sha256 "817baae2e482a7237e5c018efe4338d8b48a42dba7043f2fc3550fe2ea104090"

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
