# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.5.2/cmx-darwin-arm64.tar.gz"
      sha256 "105c822a75b00b1139f83210d13dea899d129956000dba8a2c61c7c20b029585"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.5.2/cmx-darwin-x64.tar.gz"
      sha256 "37bd11515cb185cff956cb348fa5c3ed39b7d55b937af5422362dd562154d8ba"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.5.2/cmx-linux-x64.tar.gz"
      sha256 "50a98231cbc3a4e4f67f9f3e17136dcabc4e99773d5fcb30016e80adbb2e4374"

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
