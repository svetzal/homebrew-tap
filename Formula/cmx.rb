# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.7.0/cmx-darwin-arm64.tar.gz"
      sha256 "7093d748c4d3901693a982e5defc6cbc37dc8d89015862445df19a24612fc575"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.7.0/cmx-darwin-x64.tar.gz"
      sha256 "4fea4d4ede5e43c4e6e447f7f5837dbc29c7e8afa8da0f00dcb407cea150210f"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.7.0/cmx-linux-x64.tar.gz"
      sha256 "99fe7728769f4b86b3dd2e9955c1a3ddcfd35002551d5c3b68d0a05887dfcc8e"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmx --version")
    assert_match version.to_s, shell_output("#{bin}/cmf --version")
  end
end
