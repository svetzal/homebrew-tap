# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.10.2/cmx-darwin-arm64.tar.gz"
      sha256 "1a304db4234a5e9302f22a60d05de2137224454ebf8f69d83968fb26b2f8dd4d"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.10.2/cmx-darwin-x64.tar.gz"
      sha256 "4530ecd4760516ac655c9ff216e3e6d44d54bf3f833c7ed3c5cff03c64a01fad"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.10.2/cmx-linux-x64.tar.gz"
      sha256 "b24ad128fb10c6362f91340c45fafa900e9a3dc97d50b25055a53ed1ec1aa607"

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
