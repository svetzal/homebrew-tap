# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.0.0/cmx-darwin-arm64.tar.gz"
      sha256 "7d7d04ee4b57786de0af4e2fda6c01cab3429eab7b613bc0afe3ae7e9332e7dd"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.0.0/cmx-darwin-x64.tar.gz"
      sha256 "e3d5fed8091bf2c582cbe30c1c3b6fe731b827646f61f6895881db0c4d53df4f"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.0.0/cmx-linux-x64.tar.gz"
      sha256 "0e316d84fe40fcd979de3e680603cf8df71a69ee73d63750688da6e99fa18a84"

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
