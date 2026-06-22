# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.10.0/cmx-darwin-arm64.tar.gz"
      sha256 "d2731d8c4896c2c2ab2531d6180c6f9ad6211e1da3ae251d26669fb026d21564"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.10.0/cmx-darwin-x64.tar.gz"
      sha256 "e739c1fcdd9f0c97d850df2491b4ce8f26b05733c021537b6cd421af12c85dd1"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.10.0/cmx-linux-x64.tar.gz"
      sha256 "4ba0bd39c876c32f80060e0bec11d9610fd69e376eb5d19e34be3b1ac687d841"

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
