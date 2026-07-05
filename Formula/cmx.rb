# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.12.0/cmx-darwin-arm64.tar.gz"
      sha256 "e47dbb45ad7a4f06440fe0d8fb223b286df5447a3a5d2d9015ccb7aded20294b"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.12.0/cmx-darwin-x64.tar.gz"
      sha256 "8f81db35ca88132efb4fe3665f864065cb89c57c48294e60f999e752027747f0"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.12.0/cmx-linux-x64.tar.gz"
      sha256 "d3aa757be42853e522ad29aeecb56cdce0d83e275dfc2b42c9a2009bc8a5cde2"

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
