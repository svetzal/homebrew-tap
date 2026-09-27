# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager, intent materializer, and verifier for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "3.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.3.1/cmx-darwin-arm64.tar.gz"
      sha256 "01bf5435602321d6bc46b1b6431b9c737c119a8ae367ae5e87960569dfda4cac"

      def install
        bin.install "cmx"
        bin.install "cmf"
        bin.install "cmv"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.3.1/cmx-darwin-x64.tar.gz"
      sha256 "9926f6025fe0b2b1f716a1f72cb4723788e47b6d6444336a0cab44dfdd23bcda"

      def install
        bin.install "cmx"
        bin.install "cmf"
        bin.install "cmv"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.3.1/cmx-linux-x64.tar.gz"
      sha256 "a3fa09c785eddbbd1801b001bbd9de9800bc29da15612abd3a1cfc862e410313"

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
