# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.10.1/cmx-darwin-arm64.tar.gz"
      sha256 "147928938af2e2be9f79e3ba5439bd1fbe0fc58d1a52f35c0d67e0baff44fe28"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.10.1/cmx-darwin-x64.tar.gz"
      sha256 "fb5fca912df05fe911285d68370a52654c07ce8d139a99125bc59d26edcebba7"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.10.1/cmx-linux-x64.tar.gz"
      sha256 "2fadd45f056f3ba860c83f3dba305e11a6e5a65f89bbc69547c6549fd3cbff4a"

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
