# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.18.0/parite-darwin-arm64.tar.gz"
      sha256 "f3af6c3bfbd05e86203933a79b50138cb6c921bf9785b1bbe1c19ac49bd49482"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.18.0/parite-darwin-x64.tar.gz"
      sha256 "c63ed5348295f58190cc884bb5bc5fd2cf4987f421d10e08758cd82076258200"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.18.0/parite-linux-x64.tar.gz"
      sha256 "46e0ef2bf55b1aec25b1c801711887922f450952f25e2984eebdd11e45352e50"

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
