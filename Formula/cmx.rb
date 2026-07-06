# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "3.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.1.2/cmx-darwin-arm64.tar.gz"
      sha256 "a524b123e61e8b69ecebb2d6642bffce4144df6715cb4c0898b3f07cad44b9e0"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.1.2/cmx-darwin-x64.tar.gz"
      sha256 "3a3c558b9deb1bed0fb0e893a156e8a06a042de720369fd0900719e8f3e12e39"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.1.2/cmx-linux-x64.tar.gz"
      sha256 "1d97fdb87cb0e1ebc05f1adc838ecc47fc810e22d1531e89c39edddd4b5b0bff"

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
