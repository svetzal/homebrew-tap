# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.5.0/cmx-darwin-arm64.tar.gz"
      sha256 "4a76e9d43adcbba948a3de5df513781fba6c3f6d8c05e8cedf62af755142312a"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.5.0/cmx-darwin-x64.tar.gz"
      sha256 "dcf22fc5677eae555f51562c3bb48fddbf3fbb02a1bf9d095d77e029a743b4ed"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.5.0/cmx-linux-x64.tar.gz"
      sha256 "d2e84c479c2a4c47f8c159646605395ccc2e024e8ca13e7a967f8488eb4b0a39"

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
