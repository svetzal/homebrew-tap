# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager for curated agentic context — agents and skills"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.4.2/cmx-darwin-arm64.tar.gz"
      sha256 "2793fc0b47c821f0815c31bfa2226eabfab0f688ab137f17491718d0aa7920d2"

      def install
        bin.install "cmx"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.4.2/cmx-darwin-x64.tar.gz"
      sha256 "bdd81543f9bf2d385c3659bc8143ff0c81411edce0504c3cc60cf283d25a1a3d"

      def install
        bin.install "cmx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.4.2/cmx-linux-x64.tar.gz"
      sha256 "d37f6169f51d7d79c58387fef32241a6b55f5cb2868bf35f98148f3ce792da76"

      def install
        bin.install "cmx"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmx --version")
  end
end
