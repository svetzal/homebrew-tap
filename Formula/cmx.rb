# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager, intent materializer, and verifier for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "3.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.2.0/cmx-darwin-arm64.tar.gz"
      sha256 "c437344e77676db2e1034eba5c5a47001ac1a3e95f1ffafdb46e001d9bf5a239"

      def install
        bin.install "cmx"
        bin.install "cmf"
        bin.install "cmv"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.2.0/cmx-darwin-x64.tar.gz"
      sha256 "5f10d3daffc66ba1ec4857a4371375f2db223c712a96d0273b4340f51f220027"

      def install
        bin.install "cmx"
        bin.install "cmf"
        bin.install "cmv"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.2.0/cmx-linux-x64.tar.gz"
      sha256 "d2072c1da2d3df6f3595e0220e82c8c2e982174e877e076b04bce9960fe3cda9"

      def install
        bin.install "cmx"
        bin.install "cmf"
        bin.install "cmv"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmx --version")
    assert_match version.to_s, shell_output("#{bin}/cmf --version")
    assert_match version.to_s, shell_output("#{bin}/cmv --version")
  end
end
