# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager for curated agentic context — agents and skills"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.2.0/cmx-darwin-arm64.tar.gz"
      sha256 "2e6f850154049690b8172828331a7183d1eff1fcfd553228805686f0c2b9cfe6"

      def install
        bin.install "cmx"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.2.0/cmx-darwin-x64.tar.gz"
      sha256 "dd45331a20a1f51542414a012b906b1b57a354b91ffbee653f1f5d7ad741969b"

      def install
        bin.install "cmx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.2.0/cmx-linux-x64.tar.gz"
      sha256 "f61ad9fc84511875b547a1464451e9d3f56d246bdb66e4b44b8349fa525e4027"

      def install
        bin.install "cmx"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmx --version")
  end
end
