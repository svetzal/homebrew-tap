# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.9.0/cmx-darwin-arm64.tar.gz"
      sha256 "ad4ca3d638f1b5ff99eb75359c0bc238f00c04d0f74fa0382beb56a155f7d436"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.9.0/cmx-darwin-x64.tar.gz"
      sha256 "7b7d520ae0473a9e4fa8c850c962e19c5e4dd920f5cd3745a7cfb23be54f63f8"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.9.0/cmx-linux-x64.tar.gz"
      sha256 "73cee12a0ac8ebf7ff72bf97256771fd3219ef493e2435855f44ea2e5f00a25e"

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
