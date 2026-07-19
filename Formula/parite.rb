# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.13.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.5/parite-darwin-arm64.tar.gz"
      sha256 "99ad0af21d727c133454db830406a09a38a88408f8c2bb6ffd79b0278ba0af47"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.5/parite-darwin-x64.tar.gz"
      sha256 "7569917086de4afa861677cad826320283417eff4d0ad1e6641f00ee1f7a6bdd"

      def install
        bin.install "parite"
        bin.install "parited"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.13.5/parite-linux-x64.tar.gz"
      sha256 "6f9b26d0ca2da27b4a381512f5c51638a5b184b12bbfc96241d8042f842db323"

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
