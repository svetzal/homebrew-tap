# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.13.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.3/parite-darwin-arm64.tar.gz"
      sha256 "c906a7cd371e72615a9db49b2259c5d32f236dc19225ed229a08eec45f6347ba"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.3/parite-darwin-x64.tar.gz"
      sha256 "4b4ead658ca03706fc11534e30578bd9218daf56a8bf6fa53ff1ef446d308600"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.3/parite-linux-x64.tar.gz"
      sha256 "d7ec2b2b98463ca322bd8263e6e533f4620ef0a2e628e1398bdef353cf93ed6a"

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
