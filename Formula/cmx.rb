# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager for curated agentic context — agents and skills"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.0.0/cmx-darwin-arm64.tar.gz"
      sha256 "c1a9f678450a239522604de17190e88e1c8a130952596f1e119c21192f587f07"

      def install
        bin.install "cmx"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.0.0/cmx-darwin-x64.tar.gz"
      sha256 "ac1d1db15b8183040fa13cda7e73933868d4703c5ce0360eed59dc5c967f8980"

      def install
        bin.install "cmx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.0.0/cmx-linux-x64.tar.gz"
      sha256 "19e10af187d856c3f12a3ee1b78a1bdccc4c8eef39f0d52d273009f20cdf2830"

      def install
        bin.install "cmx"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmx --version")
  end
end
