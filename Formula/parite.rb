# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.3.1/parite-darwin-arm64.tar.gz"
      sha256 "8496d10218d7491a7561cf3124d1094f52f85cf2985813b2c1a84498d7be6ad5"

      def install
        bin.install "parite-cli" => "parite"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.3.1/parite-darwin-x64.tar.gz"
      sha256 "e44954d03d554682004cf2a8acbda73e8dd310e9f8ba3929c8d14c35fd43701e"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.3.1/parite-linux-x64.tar.gz"
      sha256 "b0842c5aaae8af462d54db6322a5aeca56cd57cae570f1449df905d8e9fa70b9"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parite --version")
  end
end
