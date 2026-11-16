# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.22.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.13/parite-darwin-arm64.tar.gz"
      sha256 "7740e68cbfe6db6eaca7c4c041532848694ee76d1c3d72c1289835cbc1e08863"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.13/parite-darwin-x64.tar.gz"
      sha256 "59723588b9721da3542e65bf5032df430f68dbf704a291c39e2446a373106711"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.22.13/parite-linux-x64.tar.gz"
      sha256 "f1425248acc366d1f8b4dcfafbbbe5f35fc427fd294e87a21593cd1cb3d63399"

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
