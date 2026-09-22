# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.17.0/parite-darwin-arm64.tar.gz"
      sha256 "5b507d98df34afc4440eb008eb08e5aa2565d041d7b550543aca747dd0a37680"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.17.0/parite-darwin-x64.tar.gz"
      sha256 "67cb31e742ed4b3b721bc684d06b9dd51e34174c1e18df498f44646e947c46ce"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.17.0/parite-linux-x64.tar.gz"
      sha256 "71d6cdec77e1c84d479ee1264b56d88f8979a038cdbd7d2ee3b1b93e84d958cd"

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
