# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "3.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.1.1/cmx-darwin-arm64.tar.gz"
      sha256 "800faee758ac7465f76cfc049ac6c2bca971d0a13e74922727dd4b9eee8b0d75"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.1.1/cmx-darwin-x64.tar.gz"
      sha256 "3c572c496f9fb29fc28ee961c256b4eb89586683a97af6277f7e12d23a64516b"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.1.1/cmx-linux-x64.tar.gz"
      sha256 "65e8912f42ac9317debd86a53b42351025ba487a548d60c8d7626698db31b91c"

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
