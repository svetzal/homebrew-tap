# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "3.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.1.3/cmx-darwin-arm64.tar.gz"
      sha256 "435575f8965a6b6a4cd7b27792a770638e7c487fe46af92893ba358f144c83a5"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.1.3/cmx-darwin-x64.tar.gz"
      sha256 "59e1fc491924e5423fec34ef978f3a1d31eeb14d4c375b67b89741663af06027"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.1.3/cmx-linux-x64.tar.gz"
      sha256 "ad292cd54dc17362c6968d5e577fc07d9479f3a5603e09d41b877500bc0edf92"

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
