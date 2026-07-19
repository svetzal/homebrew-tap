# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.13.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.8/parite-darwin-arm64.tar.gz"
      sha256 "66a59e5fdacc82686fdb796ccf79c5d7b5bda18b1a3455d29f884e8caf237e39"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.8/parite-darwin-x64.tar.gz"
      sha256 "0440ebb290e7e58635bfdb603e7d57b0e65ef4066d45ec8634a1923da77a283f"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.8/parite-linux-x64.tar.gz"
      sha256 "6e546e2bf105f4d1ad2a3f71d959166641d371a041023bdfc7d1f6ba6d0084d5"

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
