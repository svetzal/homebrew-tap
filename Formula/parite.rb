# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.14.1/parite-darwin-arm64.tar.gz"
      sha256 "5bb1e0dae217f43eb624b6c2d403e07445846bb1d5c42a8e4060137fcaf63979"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.14.1/parite-darwin-x64.tar.gz"
      sha256 "9a03302a63bdf0c1638ae2d636cd59755ec2a86b873538724967daabeb7f2655"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.14.1/parite-linux-x64.tar.gz"
      sha256 "b410f6c0cede90a8d4a25f27e0afdd3fb6ad69d491ea0f1ec69a82be78907c8d"

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
