# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager for curated agentic context — agents and skills"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.1.0/cmx-darwin-arm64.tar.gz"
      sha256 "65db0acbbcbbc5d8b664c7258dcaad56325b466fc4d4f0b57d3e4e9b3f4d13af"

      def install
        bin.install "cmx"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.1.0/cmx-darwin-x64.tar.gz"
      sha256 "9d4a8b1d53c5e06c9935d02783d4e7a301b6dadd12c1de3bc892f0c01ad56535"

      def install
        bin.install "cmx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.1.0/cmx-linux-x64.tar.gz"
      sha256 "eb4281f567210ed0accf1baf30bb3f511e59a6465a51bd3c0e2d1ac5633ec419"

      def install
        bin.install "cmx"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmx --version")
  end
end
