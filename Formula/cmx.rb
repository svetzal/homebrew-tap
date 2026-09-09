# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager, intent materializer, and verifier for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "3.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.3.0/cmx-darwin-arm64.tar.gz"
      sha256 "e86e351957261355f2423dda26d17704a381939c96ef93c1517f1ae443abd454"

      def install
        bin.install "cmx"
        bin.install "cmf"
        bin.install "cmv"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.3.0/cmx-darwin-x64.tar.gz"
      sha256 "bcb5d695a043e09b1bc0361a885fa7dff293b492ae3f43ffa80b5abb8f10fc27"

      def install
        bin.install "cmx"
        bin.install "cmf"
        bin.install "cmv"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.3.0/cmx-linux-x64.tar.gz"
      sha256 "6882a0cc7df2c37c102706c5364e22f470407c653b62df68f4bbbd8389737835"

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
