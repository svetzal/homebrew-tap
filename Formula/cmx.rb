# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.5.3/cmx-darwin-arm64.tar.gz"
      sha256 "e21408475df08a66e8af06fafbaf7c7cc09ff771777a102a9eb354d16dbcf78d"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.5.3/cmx-darwin-x64.tar.gz"
      sha256 "1e2e37c85fcb40585e61b705bef8f3648874e9266652b190611da65476212164"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.5.3/cmx-linux-x64.tar.gz"
      sha256 "76fdd8b7749af90fc8d3ecfda779ef14deccfa59013bdcac17c071a8bb534143"

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
