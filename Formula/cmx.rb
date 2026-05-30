# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.6.0/cmx-darwin-arm64.tar.gz"
      sha256 "bff2b65ca9ca15d7b06bef400df00b19877465c299e8b4c0f8fa8b726fa72c28"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.6.0/cmx-darwin-x64.tar.gz"
      sha256 "2df0e333644f2ec7ce568c9931fff49b33f0460782d8e51b5e9f46150867b6f6"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.6.0/cmx-linux-x64.tar.gz"
      sha256 "75b92c452e19489a7b62259bf42958a9ee40fd8f062b2d4b398feca4568a1838"

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
