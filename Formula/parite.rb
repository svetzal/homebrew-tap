# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.2.2/parite-darwin-arm64.tar.gz"
      sha256 "8bebbeb4b6efd11bf06fadd506143e4adbb341a5641934c695efd6219c320587"

      def install
        bin.install "parite-cli" => "parite"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.2.2/parite-darwin-x64.tar.gz"
      sha256 "7c2d087b3800d0f40e0d75e48f09ddd89ecff8a071ae1347a85186ed39c5fa92"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.2.2/parite-linux-x64.tar.gz"
      sha256 "c5f1b21c1cd15b0b3d290d590bc8d6da67cbdaf91a190b76146f35b9b8cd40cb"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parite --version")
  end
end
