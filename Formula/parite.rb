# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.5.0/parite-darwin-arm64.tar.gz"
      sha256 "2676f1401820cc3df565236805652df54b63a1662f478ba86bfec1f35f1b6b7a"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.5.0/parite-darwin-x64.tar.gz"
      sha256 "20d8644a75a23c20a770d51f263c7ef8d50642e0e8af107e83f41490ef495f03"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.5.0/parite-linux-x64.tar.gz"
      sha256 "fb05dfacbe5c3e4c173d0caba3d1058e35b7fa53b3b2cfbe01c057707f92cd2e"

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
