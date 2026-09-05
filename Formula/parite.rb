# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.16.0/parite-darwin-arm64.tar.gz"
      sha256 "f8ee31aa9d84a44e52a17176b30d716586d0054c9d42421774c6e346cd3efb95"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.16.0/parite-darwin-x64.tar.gz"
      sha256 "12c83cd08184315a951f451d25d3fa8bc1127ca7927d4014787181d7c689b9f9"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.16.0/parite-linux-x64.tar.gz"
      sha256 "f686852220d70df9d3e4d988a1299e3bf4a236ce2581385c8b458f46a5f67a81"

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
