# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.2.1/parite-darwin-arm64.tar.gz"
      sha256 "9b21dd2b2be3d22b930b03a44ed28f32d93fbfd0f8e93f5f313e60ea870ba75e"

      def install
        bin.install "parite-cli" => "parite"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.2.1/parite-darwin-x64.tar.gz"
      sha256 "c4db4c79dfdeb82bc1179c7554878f9ddc138633753b4ba73d47d142c7dedb82"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.2.1/parite-linux-x64.tar.gz"
      sha256 "ddfbf6ac7026d43bd69ed743f06f9a92b5fdcafcabfadd5d3f81cb2e7e08063f"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parite --version")
  end
end
