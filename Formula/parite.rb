# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.0/parite-darwin-arm64.tar.gz"
      sha256 "18498044ca3f9d8f6f287fde0d5ee8569d5f801537ddd859865bb87f8866f69e"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.0/parite-darwin-x64.tar.gz"
      sha256 "3a9c8a05ff8210dd761790f85da3dd8c959f85a5a2d7552ac62cc84ad905cac6"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.0/parite-linux-x64.tar.gz"
      sha256 "c04c05061d6138ec8fc2a9f664d71951da57e8cb298f7f97795cc987b6f48d48"

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
