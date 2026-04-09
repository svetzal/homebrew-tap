# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.5.1/cmx-darwin-arm64.tar.gz"
      sha256 "0162aebe0613627f8803fc45f9ae42d5c0e125a10257838da4726fe456df6a33"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.5.1/cmx-darwin-x64.tar.gz"
      sha256 "a613629907ade917a46760b55c9700012f7bc8c3a0aff7344731be4cefeb0cd0"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.5.1/cmx-linux-x64.tar.gz"
      sha256 "1c3dd0b954796cb53a4971d2294f3f1a8b4aa617e58684731109cfa7749a7888"

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
