# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.3.5/parite-darwin-arm64.tar.gz"
      sha256 "6f5f8c2bc5067f10fbc578b82571bcb39946340ee8d9592f30a970bbba5936b4"

      def install
        bin.install "parite-cli" => "parite"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.3.5/parite-darwin-x64.tar.gz"
      sha256 "9513a9a950412f6c2902d20af0fd1149ba249023bc28a7721392d6907bfbd99f"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.3.5/parite-linux-x64.tar.gz"
      sha256 "7419eeb51c2c950a8ac0a5d127e87cd161b36dfc37505e5824e3310ef6a0fd3c"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parite --version")
  end
end
