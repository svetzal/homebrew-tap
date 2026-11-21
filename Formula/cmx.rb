# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager, intent materializer, and verifier for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "3.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.4.0/cmx-darwin-arm64.tar.gz"
      sha256 "29a3a9a700d515e2cfe9b3f6494b17e53c0b22d42f099d31ee2611254797965c"

      def install
        bin.install "cmx"
        bin.install "cmf"
        bin.install "cmv"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.4.0/cmx-darwin-x64.tar.gz"
      sha256 "a8b0f2ce338e26917e08548067a591463babad3a415906761fb8edfa3bae1c83"

      def install
        bin.install "cmx"
        bin.install "cmf"
        bin.install "cmv"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.4.0/cmx-linux-x64.tar.gz"
      sha256 "fc16e14a3a309c6f85a994043282dc0b82a307020087709e71c0313dcb4cdf4c"

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
