# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.3.3/parite-darwin-arm64.tar.gz"
      sha256 "df4fe85cf47b478674c474e446b7b0a058a75d14be882206734cb0cf8dfae845"

      def install
        bin.install "parite-cli" => "parite"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.3.3/parite-darwin-x64.tar.gz"
      sha256 "e13dd05bd7af90981a36228fc8636c7e5678050344989809bb3d41a5bb2af18f"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.3.3/parite-linux-x64.tar.gz"
      sha256 "2f7e7248dea80eea9e4daa5cb4181b9887a0799c070111168979756882edf4f5"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parite --version")
  end
end
