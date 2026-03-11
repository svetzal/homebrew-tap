# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.4.0/parite-darwin-arm64.tar.gz"
      sha256 "57671db245a50c9dbbc422713b705d0041ae0251cea7465b4b7168c9f2a6c30a"

      def install
        bin.install "parite-cli" => "parite"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.4.0/parite-darwin-x64.tar.gz"
      sha256 "b915e1b0d1cd335a200cc8284370107403171c4227cbea0dcae3c74d9d7e13d1"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.4.0/parite-linux-x64.tar.gz"
      sha256 "c9578b5884c25985b2c94f874f658bf7ea6215e053893e0d365e891f291ea1ae"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parite --version")
  end
end
