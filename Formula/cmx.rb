# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager, intent materializer, and verifier for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "3.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.2.1/cmx-darwin-arm64.tar.gz"
      sha256 "00f4bd665a446b173a2dea82da64385c509d9a1af728b9cd02022fe06c26bb59"

      def install
        bin.install "cmx"
        bin.install "cmf"
        bin.install "cmv"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.2.1/cmx-darwin-x64.tar.gz"
      sha256 "a511ea087be569598d05b32adab7e7c412799fb1517e128f44000d714bf3fa8f"

      def install
        bin.install "cmx"
        bin.install "cmf"
        bin.install "cmv"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.2.1/cmx-linux-x64.tar.gz"
      sha256 "49f3f3bb9f332858f349a19ddb3a1fd13a6c5d763a4d79704320ef2b2c819259"

      def install
        bin.install "cmx"
        bin.install "cmf"
        bin.install "cmv"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmx --version")
    assert_match version.to_s, shell_output("#{bin}/cmf --version")
    assert_match version.to_s, shell_output("#{bin}/cmv --version")
  end
end
