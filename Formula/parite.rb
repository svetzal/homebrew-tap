# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.10.1/parite-darwin-arm64.tar.gz"
      sha256 "516e9dbd2e16f5fa86377a38a6a6e5fc53331b3a9f585a121b23193470aa02c1"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.10.1/parite-darwin-x64.tar.gz"
      sha256 "171548f2264f46670df76e047499a85a3da7c9a1c484084e68c8b7885eb9923e"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.10.1/parite-linux-x64.tar.gz"
      sha256 "ae1e06b29487537bd2f94808d87138f4831340bd4baa98cb4140bd591173a307"

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
