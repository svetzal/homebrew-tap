# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.12.1/cmx-darwin-arm64.tar.gz"
      sha256 "5ad564d7b645904b091e4ee319988d6fdc2fcfcbc6b9692325afab53bc0e7118"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.12.1/cmx-darwin-x64.tar.gz"
      sha256 "1ec190142501c7f946c7ed7560d0dd8e4c7cf289b0abdc18768db6ec7fe603e5"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.12.1/cmx-linux-x64.tar.gz"
      sha256 "ec797a4ca3697bc6ae0a32884f9205c24cef187782153d9fa82142f17e04ed1a"

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
