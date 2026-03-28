# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager for curated agentic context — agents and skills"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.4.0/cmx-darwin-arm64.tar.gz"
      sha256 "c34aa6857432f5a9d8ab7f53c36657d915b51e2825a3122bd60aed98779747b0"

      def install
        bin.install "cmx"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.4.0/cmx-darwin-x64.tar.gz"
      sha256 "f8416e92e355177f62afdde01878de38d92619857bd9b2b0e8f513ddf62c2567"

      def install
        bin.install "cmx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.4.0/cmx-linux-x64.tar.gz"
      sha256 "52e4b88f3cbfe3e12d88b08c7d4b52f4938a61bbaff94d43fa32d5b85466ed2e"

      def install
        bin.install "cmx"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmx --version")
  end
end
