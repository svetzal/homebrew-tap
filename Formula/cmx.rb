# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.8.0/cmx-darwin-arm64.tar.gz"
      sha256 "cb984f8aa8f8b067c5c3a25fc07648f0283af3af5dd670dd955e2bae512e90c2"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.8.0/cmx-darwin-x64.tar.gz"
      sha256 "ea58b8f431dacefffa1c3f1c90e53f8f12bf83254a03b0bca5e9fc5856c576ae"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.8.0/cmx-linux-x64.tar.gz"
      sha256 "bd6ee536d916a30b522b7adf89819c4da6bef22e3ac23ce87354a8e8a22bc7f8"

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
