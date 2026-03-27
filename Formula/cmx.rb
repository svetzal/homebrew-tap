# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager for curated agentic context — agents and skills"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.3.0/cmx-darwin-arm64.tar.gz"
      sha256 "4f7ddbc8fed5f80137ddfa0e3404a75cd0fa324faf0dcc817d2ac74de2ee6690"

      def install
        bin.install "cmx"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.3.0/cmx-darwin-x64.tar.gz"
      sha256 "bec897175f0c37fb84f14e2ca7522431029bbd13d2a4e9a9b5fa722ebe5ae5df"

      def install
        bin.install "cmx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.3.0/cmx-linux-x64.tar.gz"
      sha256 "afc985d932f9ce3a055a95ffbccda6510a8427b430c0efc2b46ba0e5910b198a"

      def install
        bin.install "cmx"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmx --version")
  end
end
