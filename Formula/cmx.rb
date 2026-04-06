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
      sha256 "9264f9c367f622375f744bbd697d299b89acce9be07db8a241879a148c94c731"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.5.0/cmx-darwin-x64.tar.gz"
      sha256 "c43fa8197722f77bd7d6ba4664cc76302badeaa2e85b585add06c3a13fd4d341"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.5.0/cmx-linux-x64.tar.gz"
      sha256 "4d7d35ceca1141963badb2bccf85bbb83e8c7d6868747fa3355232f7f38eae6e"

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
